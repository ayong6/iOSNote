# UILabel 标签
## 属性 ------
### 首选布局的最大宽度
 
```swift
public var preferredMaxLayoutWidth: CGFloat
```
- UILabel特性：当约束好位置和宽之后，系统会自动计算高度
- 自动布局计算高度偏差的问题：当利用强制布局方法`layoutIfNeeded()`计算UILabel的高度时会有高度偏差问题。
- 解决办法：设置`var preferredMaxLayoutWidth`，保证计算出来的数值跟真正显示出来的效果一致。

### 超行方式

```swift
public var lineBreakMode: NSLineBreakMode
```


```swift
public enum NSLineBreakMode : Int {
     
 	// 换行设置
     case ByWordWrapping // Wrap at word boundaries, default
     case ByCharWrapping // Wrap at character boundaries
 	//单行设置
     case ByClipping // Simply clip 
     case ByTruncatingHead // Truncate at head of line: "...wxyz"
     case ByTruncatingTail // Truncate at tail of line: "abcd..."
     case ByTruncatingMiddle // Truncate middle of line:  "ab...yz"
 }
```

### 富文本属性

```swift
@NSCopying public var attributedText: NSAttributedString? // default is nil
```



