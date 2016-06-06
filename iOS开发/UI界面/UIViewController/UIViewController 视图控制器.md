# UIViewController 视图控制器
- 视图控制器是数据和视图之间的桥梁，视图控制器提供了一个基本的框架来构建应用程序

- UIViewController是所有视图控制器的父类

- 视图控制器负责创建和管理一组视图，它本身提供一个视图，称为该试图控制器的根视图，协调管理数据的视图之间的交互
  - UIScreen对象时链接物理屏幕的标示
  - UIWindow为UIScreen对象提供画布
  - 一组UIView对象就可以显示内容
  - 每个视图控制器管理和控制一系列的视图
  - 不要把UIView添加到UIWindow上，而是添加一个

- iOS提供了许多内置的视图控制器，以支持标准的用户界面部分。比如：导航控制器`UINavigationController`，标签栏控制器`UITabBarController`，表视图控制器`UITableViewController`

## 视图控制的创建
1.代码创建

```swift
let mainViewController = UIViewController()
self.window?.rootViewController = mainViewController
```

2.通过storyboard创建

```swift
// 加载storyboard
let storyboard = UIStoryboard(name: "main", bundle: nil)
```
- bundle参数：nil默认就是`UIBundle.mainBundle()`

2.1 通过箭头所指向的storyboard创建视图控制器

```swift
let vc1 = storyboard.instantiateInitialViewController()
self.window?.rootViewController = vc1
```

2.2 通过storyboard的标识符创建视图控制器
		
```swift
let vc2 = storyboard.instantiateViewControllerWithIdentifier("main")
self.window?.rootViewController = vc2
```

3.通过xib创建

```swift
let vcNib = UIViewController(nibName: "ViewController", bundle: nil)
self.window?.rootViewController = vcNib
```

## 视图控制器View的加载顺序
1. loadView
2. viewDidLoad
3. viewWillAppear
4. viewWillLayoutSubviews
5. viewDidLayoutSubviews
6. viewDidAppear

## 视图控制器View的卸载顺序
一、如果通过代码创建的UIViewController，view的卸载顺序：

1. viewWillDisappear
2. viewDidDisappear

二、如果通过storyboard创建的UIViewController，view的卸载顺序：

1. viewWillDisappear
2. viewWillLayoutSubviews
3. viewDidLayoutSubviews
4. viewDidDisappear

iOS6之前使用`viewDidUnload:`方法来释放对象的引用
iOS6之后使用`didRecevelMemoryWarning`内存紧张的时候调用

## 多控制器
- 一个iOS的app很少只有一个控制器组成，除非这个app极其简单
- 当app中有多个控制器的时候，我们就需要对这些控制器进行管理
- 有多个view时，可以用一个大的view去管理1个或者多个小view，控制器也是如此，用1个控制器去管理其他多个控制器
                    	
  比如，用一个控制器A去管理3个控制器B、C、D，控制器A被称为控制器B、C、D的“父控制器”；控制器B、C、D被称为控制器A的“子控制器”

> NOTE：
> 如果2个控制器的view是父子关系（不管是直接还是间接的父子关系），那么这两个控制器也应该为父子关系

**为了便于管理控制器，iOS提供了2个比较特殊的控制器**
1. UINavigationController 导航控制器
2. UITabBarController 标签栏控制器

## 属性 ---
### 标题

```swift
public var title: String? // Localized title for use by a parent controller.
```

- 这个方法会同时设置子控制器的标题

### navigationItem

```swift
public var navigationItem: UINavigationItem { get }
```

- 影响着导航栏的内容

### navigationController

```swift
public var navigationController: UINavigationController? { get }
```

- 所有的视图控制器共享一个导航控制器

### 子控制器数组

```swift
public var childViewControllers: [UIViewController] { get }
```

### 父控制器

```swift
weak public var parentViewController: UIViewController? { get }
```

### 是否自动调整ScrollView的contentInset属性

```swift
public var automaticallyAdjustsScrollViewInsets: Bool // Defaults to YES
```
- 默认为ture，在视图控制器下面会自动添加20的y值，在导航控制器下面会自动添加64的y值

## 方法 ---
### 状态栏设置

```swift
// 状态栏样式 
public func preferredStatusBarStyle() -> UIStatusBarStyle     
 
// 状态栏隐藏
public func prefersStatusBarHidden() -> Bool // Defaults to NO
 
// 状态栏更新动画	
public func preferredStatusBarUpdateAnimation() -> UIStatusBarAnimation 
```

### 控制器的根view

```swift
public func loadView()
``` 

- loadView()在第一次使用控制器的view的时候调用
- 通过重写这个方法可以自定义控制器的view，默认控制器的颜色是几乎透明

### 当控视图旋转的时候调用

```swift
public func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator)
```

**控制器视图的生命周期方法**

### 视图加载
```swift
override func loadView() {
}
```
- 控制器的view是懒加载，第一次使用的时候才会去加载，并不是创建UIViewController控制的时候去加载
- 如果控制器是窗口的根控制器时，view创建可以不用设置尺寸
- 如果覆盖了该方法，则必须创建View给UIViewController的View属性
- 如果没有覆盖该方法，UIViewController会调用父类的方法

### 视图已经加载
 
```swift
public func viewDidLoad()
```

### 视图即将显示
 
```swift
public func viewWillAppear(animated: Bool)
```

### 视图已经显示

```swift
public func viewDidAppear(animated: Bool)
```

### 视图即将消失

```swift
public func viewWillDisappear(animated: Bool)
```

### 视图已经消失

```swift
public func viewDidDisappear(animated: Bool)
```

### 视图即将布局子控件

```swift
public func viewWillLayoutSubviews()
```

### 视图完成布局子控件

```swift
public func viewDidLayoutSubviews()
```

### 收到内存警告

```swift
public func didReceiveMemoryWarning()
```

### 通过segue跳转前准备

```swift
public func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
```
- 我们可以重写这个方法，进行场景跳转前的一些操作

### 通过标识符完成segue跳转

```swift
public func performSegueWithIdentifier(identifier: String, sender: AnyObject?)
```
1. 根据identifier去storyboard中找到对应的线，新建UIStoryboardSegue对象
   - 设置segue对象的sourceViewController（来源控制器）
   - 创建segue对象的destinationViewController（目标控制器）

1. 调用sourceViewController的下面方法，做一些跳转前的准备操作`public func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)`

1. 调用Segue对象的`func perform()`方法开始执行界面跳转操作
   - 如果segue的style是push，取得sourceViewController所在的UINavigationController，调用UINavigationController的push方法将destinationViewController压入栈中，完成跳转。
   - 如果segue的style是modal，调用sourceViewController的presentViewController方法将destinationViewController展示出来

### Modal的形式展示控制器
- 除了push之外，还有另外一种控制器的切换方式，那就是Modal
- 任何控制器都能通过Modal的形式展示出来
- Modal的默认效果：新控制器从屏幕的最底部往上钻，直到盖住之前的控制器为止
- 通过`modalTransitionStyle`属性设置模态视图弹出时的动画效果

```swift
public func presentViewController(viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
```

- modal出哪个控制器，哪个控制器就有权利dismiss
- 谁modal控制器，谁也有权利dismiss
- storyboard只能modal展示，不能dismiss。dismiss只能通过代码实现

### 关闭当初Modal出来的控制器

```swift
public func dismissViewControllerAnimated(flag: Bool, completion: (() -> Void)?)
```

### 添加子控制器

```swift
public func addChildViewController(childController: UIViewController)
```

### 从父控制器删除

```swift
public func removeFromParentViewController()
```

- 将控制器从`childViewControllers`数组中移除

### 当前控制器即将被添加到某个父控制器时调用

```swift
public func willMoveToParentViewController(parent: UIViewController?)
```

### 当前控制器已经被添加到某个父控制器时调用

```swift
public func didMoveToParentViewController(parent: UIViewController?)
```
- 可以重写这个方法做一些事情
- 当一个控制器从父控制器中移除时，会调用控制器的`didMoveToParentViewController：`方法，并且参数是nil