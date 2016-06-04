//: Playground - noun: a place where people can play

import UIKit

// 函数
/*
    函数的格式
    func 函数名(参数) -> 返回值 { 代码块 }
    1. 如果没有参数，写成()
    2. 如果没有返回值，写成 () / Void 或者 不写
*/


// 常见的函数类型
// 1> 没有参数，没有返回值的函数
func sayHelloWorld() {
    print("hello world")
}

// 2> 有参数，没有返回值的函数
func sayHelloWorld(name: String) {
    print("\(name):hello world")
}

sayHelloWorld("xiaoming")

// 3> 没有参数，有返回值的函数
func sayHello() -> String {
    return "hello world"
}
sayHello()

// 4> 有参数，有返回值的函数
func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return "\(personName) true"
    } else {
        return "\(personName) flase"
    }
}

print(sayHello("Tim", alreadyGreeted: true))


// 5> 多重返回值函数
func minMax(array: [Int]) -> (min: Int, max: Int) {
    return (array.first!, array.last!)
}



// 函数参数名称
// 函数参数都有一个外部参数名称和一个局部参数名称：
// 外部参数名用于在函数调用时标注传递给函数的参数
// 局部参数名在函数的实现内部调用。
// 所有参数必须有独一无二的局部参数名。

// 1> 默认情况下，第一个参数省略外部参数名， 从第二个参数开始，其局部参数名也是外部参数名。
func test1(name: String, age: Int, height: Double) {

}
test1("xiaohei", age: 18, height: 171.0)

// 2> 我们可以指定外部参数名： 如果你指定了外部参数名，函数被调用时，必须使用外部参数名。
func test2(name: String, andAge age: Int, andHeight height: Double) {
    
}
test2("xiaohei", andAge: 18, andHeight: 171.0)

// 3> 如果你不想为第二个及后续的参数设置外部参数名，用一个下划线 _代替一个明确的参数名。

func test3(name: String, _ age: Int, _ height: Double) {
    
}
test3("xiaohei", 17, 171.0)

// 3. 默认参数值
// 3.1 你可以在函数体中为每个参数定义默认值。当默认值被定义后，调用这个函数时可以忽略这个参数
// 3.2 将带有默认值的参数放在函数参数列表的最后，这样可以保证在函数调用时，非默认参数的顺序是一致的，同时使得相同函数在不同情况下调用时显的更为清晰

// 4. 可变参数
// 一个可变参数可以接受零个或者多个值。函数调用时，你可以用可变参数来制定函数参数可以被传入不确定数量的输入值。
// 4.1 通过变量类型名后面加入...的方式来定义可变参数
// 4.2 可变参数传入的值在函数体中变为此类型的一个数组。
// 4.3 一个函数最多只能有一个可变参数
// 4.4 如果函数有一个或者多个带默认值的参数，而且还有一个可变参数，那么把可变参数放在参数列表的最后
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)

// 5. 常量参数和变量参数
// 5.1 函数参数默认是常量
// 5.2 通过再参数前面加关键字 var 来定义变量参数
// 5.3 好处：通过指定一个或者多个参数为变量参数，从而避免自己再函数中定义新的变量，你可以在函数中把它当做新的可修改的副本来使用。

// 6. 输入输出函数
// 6.1 变量参数，仅仅只能再函数体内被更改。如果你想要一个函数可以修改参数的值，并且想要在这些修改的在函数调用结束后仍然存在，那么就应该把这个参数定义为输入输出参数
// 6.2 定义输入输出参数，在参数名前加 inout 关键字

func swapTwoInts(inout a: Int, inout _ b: Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

func printMathResult(mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}

// 6. 函数类型
// 6.1 函数类型作为参数
// 6.2 函数类型作为返回类型



