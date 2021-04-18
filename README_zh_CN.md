# png2icns
[English](README.md) | 中文


这里提供了两种工具*(shell脚本和app)*可帮助你在macOS系统上轻松的将一个png图标生成为.icns的图标文件。

## 注意事项

这两个工具均使用了macOS系统内置的工具进行格式转换。你可以在系统中事先检查以下两个工具是否存在并且可被执行。
 
```
sips: /usr/bin/sips
iconutil: /usr/bin/iconutil
```  

源png图片应尺寸合适且清晰，最好为1024x1024像素大小。   
这里提供了一个`sample.png`可用来测试。

## 使用方法

### 1. png2icns.sh  
只需简单地运行`png2icns.sh`脚本，并**指定**源png图片的路径，生成的.icns文件将会被保存在你的**桌面**。

```
$ git clone https://github.com/JackJuly/png2icns.git
$ cd png2icns
$ chmod u+x png2icns.sh
$ ./png2icns.sh
Please enter the path to your source PNG image: [path your source png]
```

### 2. IconTool.app
打开dmg镜像文件，将`IconTool.app`拖入到应用程序中，点击运行即可。   
选择好源png文件后程序自动运行，生成的.icns文件将会被保存在你的**桌面**。  
此app是由macOS中自带的`Automator.app（自动操作）`创建。

