//: Playground - noun: a place where people can play

import UIKit

/*********************  数组  ********************/

// 数组
// 数组使用有序列表存储同一个类型的多个值。
// 1. 数组中的元素可以相同
// 2. 数组中的元素类型必须一致
var array = [1, 2, 3, 1, 2, 3]

// 数组的定义
// swift数组应遵循 Array<Element>这样的形式，可以简写[Element]
// swift开发中，可以使用AnyObject代替NSObject
var array1: [Int]
var array2: Array<Int>

// 创建一个空数组
array1 = [Int]()
array2 = Array<Int>()
var array3: Array<Int> = []

// 数组的操作
// 1> 添加元素
array.append(4)
array1.append(123)

// 2> 删除元素
// 删除指定位置的元素
array.removeAtIndex(0)

//删除第一个位置的元素
array.removeFirst()

// 删除末尾的元素
array.removeLast()

// 删除全部元素
array.removeAll()
array = []


// 3> 修改元素
// 通过下标索引修改元素的值
array1[0] = 999

// 在指定位置插入元素
array1.insert(000, atIndex: 1)

// 通过区间索引赋值,区间不能超过数组的索引范围
array1[0...1] = [111, 999]


// 4> 访问元素
// 通过下标索引访问数组中的元素
array1[0]


// 判断数组是否为空
array.isEmpty



// 对数组的遍历
// 1> 通过下标值遍历
for i in 0..<array1.count {
    print(i)
}

// 2> 通过for-in遍历
for i in array1 {
    print(i)
}

// 数组的合并
// 1> 类型相同的数组的合并
var array4 = array1 + array2

// 2> 类型不同的数组的合并
let arr1 = [1, 2, 3]
let arr2 = ["one", "two", "three"]
var arr = [AnyObject]()

for item in arr1 {
    arr.append(item)
}

for item in arr2 {
    arr.append(item)
}

print(arr)


// 创建一个带有默认值的数组
let array5 = [Double](count: 3, repeatedValue: 0.0)




/*********************  字典  ********************/

// 字典
// 字典的定义
// Swift的字典使用Dictionary<Key, Value>定义，其中Key是字典中键的数据类型，Value是字典中对应于键所存储值的数据类型。我们也可以用[Key: Value]这样快捷的形式去创建一个字典类型。
var dic: [String: AnyObject]
var dic1: Dictionary<String, AnyObject>

// 字典初始化
/*
    1. 通常字典中，key是字符串，value是任意的类型
    2. AnyObject 类似 OC中的 id；但是在swift中真的是万物皆对象
*/

dic = [String: AnyObject]()
dic1 = Dictionary<String, AnyObject>()
var dic2: Dictionary<String, AnyObject> = [:]


// 字典的操作
// 1> 添加元素
dic["name"] = "zhangsan"
dic["age"] = 18


// 2> 删除元素
// 删除key对应的值
dic.removeValueForKey("id")
// 删除全部元素
dic.removeAll()


// 3> 修改元素 ,如果有对应的键值，则修改元素；如果没有对应的键值，则添加元素
dic["name"] = "xiaohei"
// 更新字典中的值，如果不存在，就新建
dic.updateValue(123, forKey: "id")

// 4> 访问元素
// 获取到的值因为是AnyObject对象，需要进行转换！
let name: String = dic["name"] as! String



// 判断字典是否为空
dic.isEmpty


// 对字典的比遍历
// 1> 遍历字典中所有的键
for key in dic.keys {
    print(key)
}

// 2> 遍历字典中所有的值
for value in dic.values {
    print(value)
}

// 3> 遍历字典中所以的键值对
for (key, value) in dic {
    print("key:\(key), value:\(value)")
}



// 字典的合并
// 注意：字典的类型无论是否一致，都不可以通过相加+来合并
dic1["age"] = 22

for (key, value) in dic1 {
    dic.updateValue(value, forKey: key)
}
print(dic)
















