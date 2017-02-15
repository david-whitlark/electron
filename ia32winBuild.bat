SET npm_config_arch=ia32

rem get chrome driver
python script\bootstrap.py -v

rem point to custom build
python script\bootstrap.py -v ^
--target_arch=ia32 ^
--libcc_source_path=..\libchromiumcontent\ia32dist\main\src ^
--libcc_shared_library_path=..\libchromiumcontent\ia32dist\main\shared_library ^
--libcc_static_library_path=..\libchromiumcontent\ia32dist\main\static_library 

python script\build.py -c R
python script\create-dist.py
