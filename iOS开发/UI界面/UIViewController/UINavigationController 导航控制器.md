# UINavigationController 导航控制器
导航控制器是用来管理视图控制器，进行场景导航。
![](attach-0.png)

导航控制器有两个重要的属性：navigationBar和navigationItem

navigationBar的内容一般根据栈顶控制器（当前展示控制器）的navigationItem的设置来显示

navigationItem是UIViewController的属性

**UINavigationItem有以下属性影响着导航栏的内容：**

中间的标题文字
```swift
public var title: String?
```

中间的标题视图
```swift
public var titleView: UIView? 
```

左上角的返回按钮
```swift
public var backBarButtonItem: UIBarButtonItem?
```

左上角的视图
```swift
public var leftBarButtonItem: UIBarButtonItem?

```

- 当自定义左上角返回时候，会没有向右滑返回手势

右上角的视图
```
public var rightBarButtonItem: UIBarButtonItem?

```

## 导航控制器的使用步骤

1） 初始化UINavigationController
   导航控制器初始化的时候，需要一个根控制器

```swift
let nav = UINavigationController(rootViewController: UIViewController())
```

2） 设置UIWindow的rootViewController为UINavigationController

```swift
self.window?.rootViewController = nav
```

3） 根据具体情况，通过push方法添加对应个数的子控制器

```swift
self.navigationController?.pushViewController(TwoViewController(), animated: true)
```

## 导航控制器的场景切换方式
导航控制器是以栈的形式保存子控制器，遵循先进后出的原则。

**使用push方法能将某个控制器入栈**

```swift
public func pushViewController(viewController: UIViewController, animated: Bool)
```

**使用pop方法可以移除控制器**

1）回到上级控制器

```swift
public func popViewControllerAnimated(animated: Bool) -> UIViewController?
```
	
2）回到指定的子控制器

```swift
public func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewController]?
```
> **注意**：
> 参数只能是栈中的控制器
		
3）回到根控制器（栈底（根）控制器）

```swift
public func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
```

## 属性 ---

### 栈中的视图控制器组
 
```swift
public var viewControllers: [UIViewController] 
```

### 子控制器数组
 
```swift
public var childViewControllers: [UIViewController] { get }
```

### 栈顶视图控制器

```swift
public var topViewController: UIViewController? { get }
```

## 方法 ---
### push视图控制器

```swift
public func pushViewController(viewController: UIViewController, animated: Bool) 
```

### 移除栈顶的视图控制器

```swift
public func popViewControllerAnimated(animated: Bool) -> UIViewController?
```

### 回到指定的子控制器

```swift
public func popToViewController(viewController: UIViewController, animated: Bool) -> [UIViewCon
troller]?
```

### 回到根控制器（栈底（根）控制器）

```swift
public func popToRootViewControllerAnimated(animated: Bool) -> [UIViewController]?
```