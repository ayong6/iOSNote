//: Playground - noun: a place where people can play

import UIKit

/*
 throws是swift的异常处理机制
 
 do catch的作用：一旦方法抛出异常，那么就会执行catch{}中的代码，如果没有抛出异常，那么catch{}中的代码不执行
 
 try: 正常处理异常，结合do catch，一旦有异常就执行catch
 
 try!: 强制处理异常（忽略异常），告诉系统一定不会发生异常，如果真的发生了异常，那么程序就会崩溃
 
 try?: 告诉系统可能有异常也可能没有异常，如果发生异常则返回nil，如果没有发生异常，将返回值包装为一个可选类型的值
 
 **开发中推荐使用try 和 try？，不推荐使用try！**
 */

enum FireError: ErrorType {
    case overHeat(hot: Int)
    case outOfAmmo
}

class Gun {
    var heat = 20
    var ammo = 8
    
    func fire() throws {
        guard heat < 100 else {
            throw FireError.overHeat(hot: heat)
        }
        
        guard ammo > 0 else {
            throw FireError.outOfAmmo
        }
        
        print("bang!")
        heat += 10
        ammo -= 2
    }
}

let gun1 = Gun()

for _ in 1...10 {
    
    do {
        try gun1.fire()
    } catch FireError.overHeat(let a) {
        print("枪管过热！\(a)度")
    } catch FireError.outOfAmmo {
        print("没有子弹了")
    }
}

