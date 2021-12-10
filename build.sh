#!/usr/bin/env bash
#encoding=utf-8

current_time=$(date "+%Y_%m_%d")


./osx/bin/OZMTool --dsdtinject -i ./IMSx79/E7735IMS.280 -d ./IMSx79/dsdt/DSDT.aml -o ./build/E7735280_1.5M_ME_$current_time.bin
