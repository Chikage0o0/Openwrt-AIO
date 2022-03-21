#!/bin/bash
sudo chown -R 1000:1000 /home/build

# 添加签名验证
sudo chmod +x tool/usign
cp tool/public.key keys/$(./tool/usign -F -p tool/public.key)
cp tool/public.key files/etc/opkg/keys/$(./tool/usign -F -p tool/public.key)

bash target.sh



