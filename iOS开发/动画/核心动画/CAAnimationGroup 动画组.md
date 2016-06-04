# CAAnimationGroup 动画组
如果想要同时做很多动画效果，就用CAAnimationGroup

```swift
let animationGroup = CAAnimationGroup()
         
// 缩放
let scale = CABasicAnimation()
scale.keyPath = "transform.scale"
scale.toValue = 0.5
         
// 平移
let position = CABasicAnimation()
position.keyPath = "position"
position.toValue = NSValue(CGPoint: CGPoint(x: 200, y: 400))
         
// 旋转
let rotation = CABasicAnimation()
rotation.keyPath = "transform.rotation"
rotation.toValue = 70 / 180.0 * M_PI
         
// 添加到动画组
animationGroup.animations = [scale, position, rotation]
         
self.redView.layer.addAnimation(animationGroup, forKey: nil)
```