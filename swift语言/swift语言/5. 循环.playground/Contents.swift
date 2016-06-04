//: Playground - noun: a place where people can play

import UIKit

// 在开发中经常会需要循环
// 常见的循环有： for-in / while / do while

/*********************  for-in 循环 ********************/

// for-in 循环
// 1. 常规写法
for i in 0..<3 {
    print(i)
}

// 如果循环中没有用到i,可以用 _代替 i
// _ 代表忽略，在swift开发中，_ 使用频率非常高
for _ in 0..<3 {
    print("hello")
}


// 2. c\oc写法，swift2.2之后弃用这个写法
for var i = 0; i < 10; i += 1 {
    print("1")
}


/*********************  while 循环 ********************/

// swift中的while循环和oc中差不多，而且在开发中很少使用while
var a = 0

while a < 10 {
    
    print(a)
    a += 1
}


/*********************  repeat-while 循环 ********************/

// swfit升级到2.0之后，do-while改用repeat-while代替，因为do被用来作捕获异常了
var b = 0

repeat {
    print(b)
    b += 1
} while b < 10
