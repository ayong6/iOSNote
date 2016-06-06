# UIWindow 窗口
UIWindow是一种特殊的UIView，通常在一个app中一般都会有一个UIWindow

iOS程序启动完毕后，创建的第一个视图控件就是UIWindow，接着创建控制器的view，最后将控制器的view添加到UIWindow上，于是控制器的view就显示在屏幕上了

一个iOS程序之所以能显示到屏幕上，完全是因为它有UIWindow

UIWindow由系统创建

键盘和状态栏也是窗口

窗口是有层级关系的`public var windowLevel: UIWindowLevel`,层级越高，显示越前面。

### app窗口创建方法
1.在AppDelegate文件中创建窗口

```swift
self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
```

2.添加窗口的根视图控制器- 如果不添加运行会报错

```swift
self.window?.rootViewController = UIViewController()
```	
- 设置根视图控制器，默认就有屏幕旋转功能
  
3.显示窗口
```swift
self.window?.makeKeyAndVisible()
```

## 属性 ---
### 窗口层级

```swift
public var windowLevel: UIWindowLevel
```
- 层级越高，显示越前面