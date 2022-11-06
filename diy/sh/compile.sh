#!/bin/bash
sudo chown -R 1000:1000 /home/build
# 修复upx异常
sudo apt-get update >> /dev/null 2>&1 
sudo apt-get install upx git automake -y >> /dev/null 2>&1 
ln -s /usr/bin/upx staging_dir/host/bin/upx

# 添加并安装源
echo "src-link custom /home/build/custom-feed/feeds" >> feeds.conf.default
./scripts/feeds update -a >> /dev/null 2>&1 
./scripts/feeds install -p custom -a >> /dev/null 2>&1 

cp -rf custom.config .config
make defconfig >> /dev/null 2>&1 

# 获取编译的包列表
cd /home/build/custom-feed
if [[ $1 == "true" ]];then
  ipk_list=($(git log --name-status | grep -oP '(?<=feeds/)[-\w]+(?=/)' | sort | uniq))
else
  ipk_list=($(git log -1 --name-status | grep -oP '(?<=feeds/)[-\w]+(?=/)' | sort | uniq))
fi
cd /home/build/openwrt

# 编译
make package/feeds/luci/luci-base/compile -j2
for ipk in ${ipk_list[@]}
{
  echo "start compile $ipk"
  make package/feeds/custom/$ipk/compile -j2    || make package/$ipk/compile V=s >> error/error_$ipk.log 2>&1 
}
target_path=`find bin/packages -name custom`

# 解决单编译kmod 导致package不存在问题
if [[ ${target_path} == "" ]];then
  make package/feeds/custom/tcping/compile -j2
  target_path=`find bin/packages -name custom`
fi

# 移动Kmod
function mvKmod(){
  if [[ `find bin/targets -name $1` ]];then
    for ipk in `find bin/targets -name $1`; do
      mv $ipk `find bin/packages -name custom`
    done
  fi
}

mvKmod "kmod-r8125*.ipk"

# 删除旧的ipk
if [[ $1 == "true" ]];then
  rm -rf /home/build/packages/*
else
  for newipk in `ls $target_path`; do
    rm -f /home/build/packages/${newipk%%_*}_*
  done
fi

# 生成索引
mv /home/build/packages/* $target_path
make package/index >> /dev/null 2>&1 
mv $target_path/* /home/build/packages

