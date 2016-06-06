# CGRect
### 判断点是否在某个范围内

```swift
public func CGRectContainsPoint(rect: CGRect, _ point: CGPoint) -> Bool
```

### 判断范围是否在某个范围内

```swift
public func CGRectContainsRect(rect1: CGRect, _ rect2: CGRect) -> Bool
```

### 设置空间的偏移位置
```swift
public mutating func offsetInPlace(dx dx: CGFloat, dy: CGFloat)
```