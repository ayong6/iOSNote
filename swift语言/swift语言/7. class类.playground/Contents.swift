//: Playground - noun: a place where people can play

import UIKit

//类的介绍
/*
 * Swift也是一门面向对象开发的语言
 * 面向对象的基础是类,类产生了对象
 * 在Swift中如何定义类呢?
 */

// 类的定义
/*
 class 类名 : SuperClass {
    // 定义属性和方法
 }
*/

// 注意:
// 定义的类,可以没有父类.那么该类是rootClass
// 通常情况下,定义类时.继承自NSObject(非OC的NSObject)

// 类的属性介绍
// Swift中类的属性有多种
// 存储属性:存储实例的常量和变量
// 计算属性:通过某种方式计算出来的属性
// 类属性:与整个类自身相关的属性



// 1. 存储属性
// 1.1 存储属性就是存储在特定类和结构体的实例中的一个常量或者变量
// 1.2 可以在定义存储属性的时候指定默认值，也可以在构造过程中设置或修改存储属性的值。
struct Person {
    let id: Int
    var name: String
    var height: Double = 171.0
}

let person = Person(id: 10, name: "xiaoming", height: 172)
person.id
person.name
person.height

// 1.3 如果实例化结构体赋值给一个常量，则无法修改该实例的任何属性，即使结构体里定义了变量存储属性。因为结构体是值类型，当值类型的实例被声明为常量的时候，它的所有属性也成了常量。
// person.height = 177  // 报错



// 2. 计算属性
// 计算属性不能直接存储值，而是提供一个get和一个可选的set，来间接获取和设置其他属性和变量的值
// 必须使用 var 关键字来定义计算属性
// 如果set没有定义新值的参数名，则可以使用默认名称 newValue
class Person1 {
    private var personName = ""
    var name: String {
        get {
            return personName
        }
        set {
            personName = newValue
        }
    }
}

// 只读计算属性
// 只有get没有set的计算属性就是只读计算属性
// 只读属性的声明可以去掉 get 关键字
class Person2 {
    var name_ = ""
    var name: String {
        return name_
    }
}



// 3. 类属性
// 类属性是与类相关联的，而不是与类的实例相关联
// 所有的类和实例都共有一份类属性.因此在某一处修改之后,该类属性就会被修改
// 类属性的设置和修改,需要通过类来完成

// 下面是类属性的写法
// 类属性使用static来修饰
// courseCount是类属性,用来记录学生有多少门课程

class Student : NSObject {
    
    // 类属性
    static var corseCount : Int = 0
}

// 设置类属性的值
Student.corseCount = 3
// 取出类属性的值
print(Student.corseCount)



// ------------------------------------------------------

// 属性观察器
// 在oc中我们可以重写set方法来监听属性的改变
// 在swift中可以通过属性观察器来监听和响应属性值的变化
// 属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察期
// willSet 在新的值被设置之前调用
// willSet会将新的属性值作为常量参数传入，默认参数名 newValue，可自定义参数名
// didSet  在新的值设置之后调用
// didSet会将旧的属性值作为常量参数传入，默认参数名 oldValue, 可自定义参数名
// 1> willSet与didSet只有属性被赋值时才会调用，在初始化时，不会去调用这些监听方法
// 2> 新值和当前值相同也会调用属性观察器
// 3> 除了延迟存储属性之外的其他存储属性都可以添加属性观察器
// 4> 可以通过重写属性的方式为继承的属性添加或重写属性观察器
// 5> 如果一个属性在didSet观察器里为它赋值，这个值会替代之前设置的值

class Person3 {
    var name = "xiaoming" {
        willSet {
            print("新值\(newValue)设置之前调用")
        }
        didSet {
            print("被设置的旧值\(oldValue)")
            name = "xiaoxiao" // 4> 中的例子，在didSet里赋值，会替代之前设置的值
        }
    }
}
let person3 = Person3()
person3.name = "zhangsan"
person3.name // 因为在didSet里赋值，所以替代了上一行的赋值，输出为“xiaoxiao”



// 1.4 延迟存储属性 lazy
// 1.4.1 延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用 lazy 标识一个延迟存储属性
// 1.4.2 必须将延迟存储属性声明成变量。因为属性的初始值可能在实例构造完成之后才会得到，而常量属性在构造过程完成之前必须要有初始值，因此无法声明成延迟属性

// 苹果的设计思想:希望所有的对象在使用时才真正加载到内存中

// 懒加载的格式:  定义变量时前面使用lazy来修饰变量，后面赋值一个闭包
// lazy var 变量: 类型 = { 创建变量代码 }()
// 注意： 1.必须声明成var， 2.闭包后面必须跟上()

// 懒加载的本质是,在第一次使用的时候执行闭包,将闭包的返回值赋值给属性
// lazy的作用是只会赋值一次

/*
lazy var array : [String] = {
    () -> [String] in
    return ["why", "lmj", "lnj"]
}()

// 如果闭包是用于懒加载，那么闭包内的in和in之前的代码都可以删除

lazy var array : [String] = {

    return ["why", "lmj", "lnj"]
}()

*/


// 全局变量和局部变量
// 全局变量：在函数、方法、闭包或任何类型之外定义的变量
// 局部变量: 在函数、方法、闭包内部定义的变量
// 1> 全局的常量或者变量都是延迟计算的，跟延迟存储属性相似，不同的在于，全局的常量或者变量不需要标记 lazy修饰符
// 2> 局部范围的常量和变量不延迟计算



// ------------------------------------------------------

// 类构造函数的介绍

// 构造函数类似于OC中的初始化方法:init方法
// 默认情况下载创建一个类时,必然会调用一个构造函数
// 即便是没有编写任何构造函数，编译器也会提供一个默认的构造函数。
// 如果是继承自NSObject,可以对父类的构造函数进行重写


// 构造函数的基本使用

// 类的属性必须有值
// 如果不是在定义时初始化值,可以在构造函数中赋值
class Person4: NSObject {
    var name : String
    var age : Int
    
    // 重写了NSObject(父类)的构造方法
    override init() {
        name = ""
        age = 0
    }
}

let person4 = Person4()


// 初始化时给属性赋值

// 很多时候,我们在创建一个对象时就会给属性赋值
// 可以自定义构造函数
// 注意:如果自定义了构造函数,会覆盖init()方法.即不在有默认的构造函数
class Person5: NSObject {
    var name : String
    var age : Int
    
    // 自定义构造函数,会覆盖init()函数
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
}

let person5 = Person5(name: "xiaohei", age: 18)


/*
 * 如果构造方法前面没有convenience关键字，代表着是一个初始化构造方法（指定构造方法）
 * 如果构造方法前面有convenience关键字，代表着是一个便利构造方法
 * 
 * 指定构造方法和便利构造方法的区别：
 * 1.指定构造方法中必须对所有的属性进行初始化
 * 2.便利构造方法中不用对所以的属性进行初始化，因为便利构造方法依赖于指定构造方法
 * 3.一般情况下如果想给系统的类提供一个快速创建的方法，就自定义一个便利构造方法
 */


// ---------------------------------------------------------

// 字典转模型(初始化时传入字典)

// 真实创建对象时,更多的是将字典转成模型
// 注意:
// 去字典中取出的是NSObject,任意类型.
// 可以通过as!转成需要的类型,再赋值(不可以直接赋值)
class Person6: NSObject {
    var name : String
    var age : Int
    
    // 自定义构造函数,会覆盖init()函数
    init(dict : [String : NSObject]) {
        name = dict["name"] as! String
        age = dict["age"] as! Int
    }
}

let dict6 = ["name": "why", "age": 18]
let person6 = Person6(dict: dict6)


// 字典转模型(利用KVC转化)

// 利用KVC字典转模型会更加方便
// 注意:
// KVC并不能保证会给所有的属性赋值
// 因此属性需要有默认值
// 基本数据类型默认值设置为0
// 对象或者结构体类型定义为可选类型即可(可选类型没有赋值前为nil)

class Person7: NSObject {
    // 结构体或者类的类型,必须是可选类型.因为不能保证一定会赋值
    var name : String?
    
    // 基本数据类型不能是可选类型,否则KVC无法转化
    var age : Int = 0
    
    // 自定义构造函数,会覆盖init()函数
    init(dict : [String : NSObject]) {
        // 必须先初始化对象
        super.init()
        
        // 调用对象的KVC方法字典转模型
        setValuesForKeysWithDictionary(dict)
    }
}

let dict7 = ["name" : "why", "age" : 18]
let person7 = Person7(dict: dict7)
