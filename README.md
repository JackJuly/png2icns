# png2icns
English | [中文](README_zh_CN.md)


A shell script and an app are provided for you to easily
generate an icns file with a png image in macOS.

## Notice

Both tools use built-in tools in the terminal in macOS.  
You can check these paths below to see if they are already exist and executable. 
 
```
sips: /usr/bin/sips
iconutil: /usr/bin/iconutil
```  

The size of your source image should be suitable for an icon, which is better to be 1024x1024 pixels.   
The `sample.png` is provided for testing.

## Usage

### 1. png2icns.sh  
Simply run the `png2icns.sh` and then **specify** the path to your source png image. The icns flie will be generated and saved on your **desktop**.

```
$ git clone https://github.com/JackJuly/png2icns.git
$ cd png2icns
$ chmod u+x png2icns.sh
$ ./png2icns.sh
Please enter the path to your source PNG image: [path your source png]
```

### 2. IconTool.app
Open the dmg file, then drag the `IconTool.app` to Applications and click to run.  
Just simply choose a png image and the icns flie will be generated and saved on your **desktop**.  
This app is created using the `Automator.app` in macOS.

