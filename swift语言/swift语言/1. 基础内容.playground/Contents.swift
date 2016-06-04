//: Playground - noun: a place where people can play

import UIKit

/*********************  常量和变量  ********************/

/* 
 swift中定义常量和变量使用let和var
 let 代表定义一个常量
 var 代表定义一个变量
 
 开发技巧：
 在swift开发中，我们需要经常使用option + 鼠标左键来查看方法和变量
*/

// 常量
let number1 = 10.1

// number = 11.1 // 常量不能修改
// 注意：声明为常量不可以修改的意思是指针不可以再指向其他对象，但是可以通过指针拿到对象，修改其中的属性。
// swift中定义对象后面不需要加*号


// 变量
var number2 = 10
number2 = 11

// 可以同时定义多个常量或者变量
let n1 = 10, n2 = 20, n3 = 30

// 每一条语句后面可以不写分号，但是写上也不会报错
let number3 = 10;

// 如果一行有多条语句，那么每条语句后面必须写上分号
let a = 10; let b = 20; let c = 30


/*********************  Swift中数据类型  ********************/

/*
 Swift类型的介绍
 
 Swift中的数据类型也有:整型/浮点型/对象类型/结构体类型等等
 先了解整型和浮点型
 整型
 有符号
 Int8 : 有符号8位整型
 Int16 : 有符号16位整型
 Int32 : 有符号32位整型
 Int64 : 有符号64位整型
 Int : 和平台相关(默认,相当于OC的NSInteger)
 无符号
 UInt8 : 无符号8位整型
 UInt16 : 无符号16位整型
 UInt32 : 无符号32位整型
 UInt64 : 无符号64位整型
 UInt : 和平台相关(常用,相当于OC的NSUInteger)(默认)
 浮点型
 Float : 32位浮点型
 Double : 64浮点型(默认)
*/


// Swift是强类型的语言
// Swift中任何一个标识符都有明确的类型
let num: Int = 10

// 注意:
// 如果定义一个标识符时有直接进行赋值,那么标识符后面的类型可以省略.
// 因为Swift有类型推导,会自动根据后面的赋值来决定前面的标识符的数据类型

// swift中不存在隐式类型转换，所以的类型转换都必须是显示的
let num1 = 10
let num2 = 9.9
let iSum = num1 + Int(num2)
let dSum = Double(num1) + num2



/*********************  元祖  ********************/

// 元祖的定义
// 方式一
let tuple1 = ("xiaoming", 18, 172.0)

// 方式二
let tuple2 = (name: "xiaoming", age: 18, height: 172.0)

// 方式三
let (name, age, height) = ("xiaoming", 18, 172.0)

// 元祖的使用
//用元组来描述一个HTTP的错误信息
// 元祖:HTTP错误
// let array = [404, "Not Found"]
// 写法一:
let error1 = (404, "Not Found")
print(error1.0)
print(error1.1)

// 写法二:
let error2 = (errorCode : 404, errorInfo : "Not Found")
print(error2.errorCode)
print(error2.errorInfo)

// 写法三:
let (errorCode, errorIno) = (404, "Not Found")
print(errorCode)
print(errorIno)



/*********************  可选类型  ********************/
// 可选类型的概念:
// 在OC开发中,如果一个变量暂停不使用,可以赋值为0(基本属性类型)或者赋值为空(对象类型)
// 在swift开发中,nil也是一个特殊的类型.因为和真实的类型不匹配是不能赋值的(swift是强语言)
// 但是开发中赋值nil,在所难免.因此推出了可选类型

// 可选类型的取值:
// 1> 空值
// 2> 有值

// 定义可选类型
// 写法一:定义可选类型
let string1: Optional<String> = nil

// 写法二:定义可选类型,语法糖(常用)
let string2: String? = nil

// 错误写法
// let string : String = nil


// 可选类型的使用

// 演练一:
// 定义可选类型
var string : Optional<String> = nil

// 给可选类型赋值
string = "Hello world"

// 打印结果
print(string)
// 结果:Optional("Hello world")\n
// 因为打印出来的是可选类型,所有会带Optional


// 演练二:
// 取出可选类型的真实值(解包)
print(string!)
// 结果:Hello world\n

// 注意:如果可选类型为nil,强制取出其中的值(解包),会出错
string = nil
// print(string!) // 报错

// 正确写法:
if string != nil {
    print(string!)
}

// 简单写法:为了让在if语句中可以方便使用string
if let str = string {
    print(str)
}

// 真实应用场景
// 目的:让代码更加严谨

// 通过该方法创建的URL,可能有值,也可能没有值

// 错误写法:如果返回值是nil时,就不能接收了
//let url : NSURL = NSURL(string: "www.520it.com")

// 正确写法:使用可选类型来接收
let url : NSURL? = NSURL(string: "www.520it.com")

// 通过url来创建request对象
if let url = url {
    let request = NSURLRequest(URL: url)
}

