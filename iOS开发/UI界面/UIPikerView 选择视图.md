# UIPikerView 选择视图
## 方法 ------

### 刷新全部列

```swift
public func reloadAllComponents()
```

### 刷新指定列
 
```swift
public func reloadComponent(component: Int)
```

### 对应的列数返回选中的行号
  
```swfit
public func selectedRowInComponent(component: Int) -> Int
```

## UIPickerViewDataSource ------
### 返回pickerView有多少列
 
```swift
public func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
```

### 返回每列有多少行
  
```swift
public func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
```

## UIPickerViewDelegate ------
### 返回每列的宽度
 
```swift
optional public func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat
```
### 返回每列的行高
 
```swift
optional public func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat
```
### 返回每列对应每行的标题
 
```swift
optional public func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
```
### NSAttributedString?富文本属性：可以描述文字大小和颜色
 
```swift
optional public func pickerView(pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
```

### 返回每列对应每行的视图控件
 
```swift
optional public func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView
```
### 选中哪一行
 
```swift
optional public func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
```