@echo off
title Generating Shit...

set FileName=%date:~0,4%%date:~5,2%%date:~8,2%0%time:~1,1%%time:~3,2%%time:~6,2%%random%
python PickTemple.py> FileCache\TempleCache
set /P Temple=<FileCache\TempleCache
xcopy /S /Y HTMLTemples\%Temple% HTMLOutput\%FileName%\
type HTMLOutput\%FileName%\index1 >> HTMLOutput\%FileName%\index.html
python PickDictionary.py > FileCache\WordCache
type FileCache\WordCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index2 >> HTMLOutput\%FileName%\index.html

python PickDictionary.py > FileCache\WordCache
type FileCache\WordCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index3 >> HTMLOutput\%FileName%\index.html
python BullShitTiny.py > FileCache\DocCache
type FileCache\DocCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index4 >> HTMLOutput\%FileName%\index.html


type HTMLOutput\%FileName%\index5 >> HTMLOutput\%FileName%\index.html
python BullShitTiny.py > FileCache\DocCache
type FileCache\DocCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index6 >> HTMLOutput\%FileName%\index.html

python PickDictionary.py > FileCache\WordCache
type FileCache\WordCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index7 >> HTMLOutput\%FileName%\index.html

python BullShitTiny.py > FileCache\DocCache
type FileCache\DocCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index8 >> HTMLOutput\%FileName%\index.html
python PickDictionary.py > FileCache\WordCache
type FileCache\WordCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index9 >> HTMLOutput\%FileName%\index.html
python BullShitTiny.py > FileCache\DocCache
type FileCache\DocCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index10 >> HTMLOutput\%FileName%\index.html

python PickDictionary.py > FileCache\WordCache
type FileCache\WordCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index11 >> HTMLOutput\%FileName%\index.html


python BullShit.py > FileCache\DocCache
type FileCache\DocCache >> HTMLOutput\%FileName%\index.html
type HTMLOutput\%FileName%\index12 >> HTMLOutput\%FileName%\index.html
cd HTMLOutput\%FileName%
del /F index1 index2 index3 index4 index5 index6 index7 index8 index9 index10 index11 index12
cd ..\..
echo Generated!
pause >nul