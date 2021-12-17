#!/usr/bin/env bash
#encoding=utf-8

current_time=$(date "+%Y_%m_%d")

./osx/bin/UEFIPatch ./X79MA-GD45/E7735IMS.280 -o ./build/tmp/E7735IMS.280$current_time.bin

./osx/bin/iasl ./X79MA-GD45/dsdt/DSDT.dsl

./osx/bin/OZMTool --dsdtinject -i ./build/tmp/E7735IMS.280$current_time.bin -d ./X79MA-GD45/dsdt/DSDT.aml -o ./build/E7735280_X79MA-GD45_$current_time.bin

echo "构建完成开始生成sha256sum码"

md5sum ./build/E7735280_x79gd45_$current_time.bin >./build/E7735280_X79MA-GD45_$current_time.bin.md5.txt

