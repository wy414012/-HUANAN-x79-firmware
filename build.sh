#!/usr/bin/env bash
#encoding=utf-8

current_time=$(date "+%Y_%m_%d")


./osx/bin/iasl ./IMSx79/dsdt/DSDT.dsl

./osx/bin/OZMTool --dsdtinject -i ./IMSx79/E7735IMS.280 -d ./IMSx79/dsdt/DSDT.aml -o ./build/E7735280_x79gd45_$current_time.bin
