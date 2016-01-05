@echo off
set PATH=%CD%;%PATH%;
java -jar -Duser.language=en -Duser.home=%ANDROID_HOME%/build-tools/21.1.0 "%~dp0\apktool.jar" %1 %2 %3 %4 %5 %6 %7 %8 %9
