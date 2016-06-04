//: Playground - noun: a place where people can play

import UIKit

// 闭包

// 闭包的介绍
// 闭包和oc中的block非常相似
// oc中的block类似于匿名函数
// 闭包是用来定义函数

// 作用：
// block是用来保存一段代码，在需要的时候执行
// 闭包也适用于保存一段代码，在需要的时候执行
// 一般用于做一些耗时的操作，如：网络请求

//block的写法:
/*
 block类型:
 返回值类型(^block的名称)(block的参数)

 block表达式:
  ^(参数列表)
  {
    // 执行的代码
  };
*/

//闭包的写法:
/*
 技巧:初学者定义闭包类型,直接写()->().再填充参数和返回值
 
 闭包类型:(形参列表)->(返回值)
 
 闭包表达式:
 {
    (形参) -> 返回值类型 in
    // 执行的代码块
 }
*/

//定义网络请求的类
class HttpTool: NSObject {
    
    func loadRequest(callBack : () -> Void){
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            print("加载数据", [NSThread.currentThread()])
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                callBack()
            })
        }
    }
}

// 进行网络请求,请求到数据后利用闭包进行回调
let httpTool = HttpTool()
httpTool.loadRequest({ () -> Void in
    print("回到主线程", NSThread.currentThread());
})


// 闭包的简写
// 1> 如果闭包没有参数，没有返回值，in和in之前的内容 () -> Void in可以省略
httpTool.loadRequest({
    print("回到主线程", NSThread.currentThread());
})

// 2> 尾随闭包写法
// 2.1> 如果闭包函数的最后一个参数，可以将闭包写在函数()的后面
httpTool.loadRequest() {
    print("回到主线程", NSThread.currentThread());
}

// 2.2> 如果函数只有一个参数，并且这个参数是闭包，那么函数后的()可以不写
// 开发中建议该写法
httpTool.loadRequest {
    print("回到主线程", NSThread.currentThread());
}


