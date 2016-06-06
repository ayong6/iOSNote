# UITableViewCell 表格单元格
**cell的定制**
**第一种：等高cell的自定义方法**
- xib自定义cell
- storyboard自定义cell
- 代码自定义cell（frame）
- 代码自定义cell（Autolayout）

**第二种：非等高cell的自定义方法**
- xib自定义cell（重点）

1> 在模型数据中增加一个cellHeight属性，用来存放对应cell的高度

2> 在cell类中的模型数据属性设置属性观察器，在属性观察器中调用`self.layoutIfNeeded()`方法强制布局，然后计算出模型数据的cellHeight

3> 在cell类的`func awakeFromNib()`中设置强制布局`self.layoutIfNeeded()`解决UILabel自动布局高度计算偏差问题。

4> 在控制器中实现`func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat`方法，返回一个估计高度。比如：200

5> 在控制器中实现`func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat`方法，返回cell的真实高度（模型数据中的cellHeight）

- storyboard自定义cell
- 代码自定义cell（frame）
- 代码自定义cell（Autolayout）

## 属性 ------
**cell的组成**
### 1.背景视图
```swift
public var backgroundView: UIView?
public var selectedBackgroundView: UIView?
```
- 默认为nil，赋值时会取代系统默认的背景视图和选中状态下的背景视图。

### 2.内容视图
	 
```swift
public var contentView: UIView { get }
```

### 2.1.内容视图包含三个子视图
	 
	```swift
	public var imageView: UIImageView? { get }
	public var textLabel: UILabel? { get }
	public var detailTextLabel: UILabel? { get } // cell的样式为:case Subtitle 才显示
	```

### 3.附件视图
	
	```swift
	public var accessoryView: UIView?
	public var accessoryType: UITableViewCellAccessoryType
	public var editingAccessoryView: UIView? 
	public var editingAccessoryType: UITableViewCellAccessoryType
	```
	
### 选中样式

```swift
public var selectionStyle: UITableViewCellSelectionStyle // default is UITableViewCellSelectionStyleBlue.
```