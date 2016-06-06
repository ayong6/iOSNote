
# UIAlertController 弹窗控制器
### 创建弹窗的方法

```swift
// 1.创建弹窗控制器
let alert = UIAlertController(title: "请输入团购信息", message: "xxxxxx", preferredStyle: .Alert)

// 2.创建按钮
let actionCancel = UIAlertAction(title: "取消", style: .Cancel, handler: nil)

let actionDestructive = UIAlertAction(title: "确定", style: .Destructive) { (action) -> Void in
   	// 获取到输入框输入的信息
	let content = alert.textFields![0].text
}

// 3.添加按钮
alert.addAction(actionCancel)
alert.addAction(actionDestructive)

// 4.添加文本输入框 - **添加文本输入框，控制器的样式要设置成ActionSheet
alert.addTextFieldWithConfigurationHandler { (text) -> Void in
    textField.placeholder = "请输入信息"
}

// 5.显示弹窗控制器
self.presentViewController(alert, animated: true, completion: nil)
```   

![](attach-0.png)

## 枚举
### 弹窗控制器样式
 
```swift
public enum UIAlertControllerStyle : Int {
     
     case ActionSheet
     case Alert
 }
```
- ActionSheet

![](attach-0.png)
￼

- Alert

![](attach-0.png)