//: Playground - noun: a place where people can play

/*
 * swift中提供三种不同的访问级别修饰符
 * public: 最大权限，可以在当前的framework和其他的framework中访问
 * internal：默认权限，可以在当前的framework中随意访问
 * private： 私有权限，只能在当前文件中访问
 * 以上权限可以修饰属性/方法/类等
 * 
 * 在企业开发中建议严格的控制权限，不想让别人访问的东西要private
 *
 *
 * 实际开发应用中，如果给按钮的监听方法加上private报错，原因是因为监听事件是由运行循环触发的，而如果该方法是私有的，只能在当前类中访问。
 * 而相同的情况在OC中是没有问题，因为OC是动态派发的
 * 而swift不一样，swift中所以的东西都是在编译时确定的
 * 如果想让swift中的方法也支持动态派发，可以在方法前面加上：@objc，告诉系统需要动态派发。
 *
 */
