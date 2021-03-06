//: Playground - noun: a place where people can play

import UIKit

// 字符串的介绍

// 字符串在任何的开发中使用都是非常频繁的
// OC和Swift中字符串的区别
// 在OC中字符串类型时NSString,在Swift中字符串类型是String
// OC中字符串@"",Swift中字符串""
// 使用 String 的原因
// String 是一个结构体，性能更高
// NSString 是一个 OC 对象，性能略差
// String 支持直接遍历
// Swift 提供了 String 和 NSString 之间的无缝转换


// 字符串遍历
var str = "Hello, Swift"
for c in str.characters {
    print(c)
}

// 两个字符串的拼接
let str1 = "Hello"
let str2 = "World"
let str3 = str1 + str2

// 字符串和其他数据类型的拼接
let name = "why"
let age = 18
let info = "my name is \(name), age is \(age)"

// 字符串的格式化
// 比如时间:03:04
let min = 3
let second = 4
let time = String(format: "%02d:%02d", arguments: [min, second])

// 字符串的截取
// Swift中提供了特殊的截取方式
// 该方式非常麻烦
// Index非常难创建
// 简单的方式是将String转成NSString来使用
// 在标识符后加:as NSString即可
let myStr = "www.520it.com"
var subStr = (myStr as NSString).substringFromIndex(4)
subStr = (myStr as NSString).substringToIndex(3)
subStr = (myStr as NSString).substringWithRange(NSRange(location: 4, length: 5))
