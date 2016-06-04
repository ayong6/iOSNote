# CABasicAnimation 基础动画

```swift
// 创建基础动画
let animation = CABasicAnimation()
         
// 选定要改变的属性
animation.keyPath = "transform.scale"
         
// 设置要改变的值
animation.toValue = 0.5
         
// 设置动画执行次数
animation.repeatCount = MAXFLOAT
         
// 取消动画反弹 - 这两个设置缺一不可
// 设置动画完成的时候不要移除动画
animation.removedOnCompletion = false
// 设置动画执行完成要保持最新的效果
animation.fillMode = kCAFillModeForwards
         
// 添加动画到图层
self.redView.layer.addAnimation(animation, forKey: nil)
```