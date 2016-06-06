# UIButton 按钮
按钮内部结构包含image和label，默认左右排列。
## 属性 ---
### 高亮图片朦层

```swift
public var adjustsImageWhenHighlighted: Bool
```

### 激活状态

```swift
public var enabled: Bool
```

### 获取title文字

```swift
public var currentTitle: String? { get }
```

## 方法 ---
### 设置标题的显示位置

```swift
public func titleRectForContentRect(contentRect: CGRect) -> CGRect
```   

- 可以重写这个方法设置标题位置

### 设置图片的显示位置

```swift
public func imageRectForContentRect(contentRect: CGRect) -> CGRect
```

- 可以重写这个方法设置图片位置

