//: Playground - noun: a place where people can play

import UIKit

/*
 一、分支的介绍
 1. 分支即 if / guard / switch/ 三目运算符 等判断语句
 2. 通过分支语句可以控制程序的执行流程
*/

/*********************  if语句 ********************/

// if语句
// 1> 判断句可以不加()
// 2> 判断句结果必须是一个真或假值
let a = 20
let b = 10
let isAB = a > b

// 实例一
if isAB {
    print("a大于b")
} else {
    print("a小于b")
}

let score = 80

if score < 60 {
    
    print("不及格")
} else if score < 70 {
    
    print("及格")
} else if score < 90 {
    
    print("良好")
} else if score <= 100 {
    
    print("优秀")
} else {
    
    print("其他")
}



/*********************  guard ********************/

// guard的使用
// guard是swift2.0新增的语法
// guard与if语句非常类似，它设计的目的是提高程序的可读性
// guard语句必须带有else语句，它的语法表达如下：
// 1> 当条件表达式为ture时，跳过else语句中的内容，继续往下实现
// 2> 当条件表达式为false时，执行else语句中的内容，跳转语句一般retrun、break、 continue和throw
/*
 guard 条件表达式 else {  // 如果条件为false执行代码块
     //代码块
 }
*/

func online(age: Int) -> Bool {
    
    guard age >= 18 else {
        
        // 如果判断语句为false，会执行else
        print("回家好好学习")
        return false
    }
    
    // 如果条件为true，继续执行
    print("可以上网")
    return true
}

let xiaoming = online(17)



/********************* switch ********************/

// switch的基本使用

// 基本用法和OC用法一样
// 不同之处：
// 1> swift后可以不跟()
// 2> case后可以不跟break(默认会break)
let sex = 0

switch sex {
    
case 0:
    print("男")

case 1:
    print("女")
    
default:
    print("其他")
}

// switch的简单使用补充
// 1. 补充一: 有case穿透，可以在语句后加 fallthrough 关键字
switch sex {
    
case 0:
    print("男")
    fallthrough

case 1:
    print("女")
    
default:
    print("其他")
}

// 2. 补充二: case中可以判断多个条件
switch sex {
    
case 0, 1:
    print("正常人")
    
default:
    print("其他")
}

// switch的特殊用法
// 1. switch可以判断浮点型
let π = 3.14
switch π {
    
case 3.14:
    print("π")
    
default:
    print("非π")
}

// 2. switch可以判断字符串
let m = 20
let n = 10
let opration = "*"

var result = 0

switch opration {

case "*":
    result = m * n
    
case "/":
    result = m / n
    
default:
    print("非法操作符")
    
}

// 3. switch中可以判断区间
let score1 = 88

switch score1 {
    
case 0..<60:
    print("不及格")

case 60...100:
    print("及格")
    
default:
    break
}




/*********************  三目运算符 ********************/
// 三目运算符
let age = 20
let isNet = age >= 18 ? "可以上网" : "回家去"


