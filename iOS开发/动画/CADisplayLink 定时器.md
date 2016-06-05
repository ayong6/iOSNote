# CADisplayLink 定时器
CADisplayLink是一种以屏幕刷新频率出发的时钟机制，每次屏幕刷新的时候就会调用，跟随屏幕一般一秒刷新60次

CADisplayLink是一个计时器，可以使绘图代码与视图的刷新频率保持同步，而NSTimer无法确保计时器实际被触发的准确时间

如果在绘图的时候需要用到定制器，通常使用CADisplayLink来创建

**使用方法**

1.创建定时器

```swift
   	let link = CADisplayLink(target: self, selector: "runLoop")
```

2.添加到主运行循环
   	
```swift
link.addToRunLoop(NSRunLoop.mainRunLoop(), forMode: NSDefaultRunLoopMode)
```

3.实现selector方法
   	
```swift
func runLoop() {
	print("1---")
}
```


## 方法---
### 添加到主运行循环

```swift
public func addToRunLoop(runloop: NSRunLoop, forMode mode: String)
```

### 从主运行循环移除

```swift
public func removeFromRunLoop(runloop: NSRunLoop, forMode mode: String)
```

## 属性---
### 是否暂停循环

```swift
public var paused: Bool
```

- true是暂停，false不暂停