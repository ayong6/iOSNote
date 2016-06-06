# UINavigationBar 导航条
一个导航控制器只有一个导航条

导航条的内容由栈顶控制器的navigationItem属性决定，UINavigationItem是UIViewController的属性

iOS7之后，默认会把导航条上面的按钮渲染成蓝色，修改方法:

1） 通过storyboard修改
               
   点击图片，将Render As选项改成 Original Image
   ![](此处有照片)

2） 通过代码修改图片的渲染模式

```swift
let  image = UIImage(named: navigationbar_friendsearch")?.imageWithRenderingMode(.AlwaysOriginal)
```