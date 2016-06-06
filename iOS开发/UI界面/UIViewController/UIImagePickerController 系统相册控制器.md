# UIImagePickerController 系统相册控制器
![](attach-0.png)


## 属性 ---
### 选择控制器的来源

```swift
public var sourceType: UIImagePickerControllerSourceType
```
参数 UIImagePickerControllerSourceType：
 
```swift
case PhotoLibrary    // 相册集
case SavedPhotosAlbu // 照片库
```

### 保存图片到手机照片库

```swift
public func UIImageWriteToSavedPhotosAlbum(image: UIImage, _ completionTarget: AnyObject?, _ completionSelector: Selector, _ contextInfo: UnsafeMutablePointer<Void>)
```
image： 写入的图片
completionTarget：图片保存监听者
Selector：

注意：写入相册方法中，想要监听图片有没有保存完成，保存完成的方法不能随意乱写。要用系统提供的方法，如下：

```swift
// - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo;
```