#!/bin/bash
export npm_config_arch=x64
python script/clean.py

# get chrome driver
python script/bootstrap.py -v \
--target_arch=x64

# point to custom build
python script/bootstrap.py -v \
--target_arch=x64 \
--libcc_source_path=../libchromiumcontent/dist/main/src \
--libcc_shared_library_path=../libchromiumcontent/dist/main/shared_library \
--libcc_static_library_path=../libchromiumcontent/dist/main/static_library 

python script/update.py
python script/build.py -c R
python script/create-dist.py
