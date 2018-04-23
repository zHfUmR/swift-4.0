//: Playground - noun: a place where people can play

import UIKit



/*
 class 类名: super class {
 //定义属性和方法
 }
 */

class Person : NSObject{
    var age:Int = 0

    //override ： 重写，如果写的一个方法是对父类的方法进行重写，那么必须在改方法前加上override
//    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
//
//    }
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

let per = Person()

per.age = 20

per.setValue(18, forKey: "age")

print(per.age)

//per.setValuesForKeysWithDictionary(["age":24,"name":"zhf"])
per.setValuesForKeys(["age":24,"name":"zhf"])

print("person \(per.age)")




class Student: NSObject {
    //定义属性
    //定义存储属性
    var age : Int = 0
    var name : String?
    
    //定义计算属性
    var averageScore : Double {
        return (mathScore + chineseScore)*0.5
    }
    
    //定义类属性
    //类属性是和整个类相关的属性，而且是通过类名进行访问
    static var courseCount : Int = 0
    
    
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    /*
     //定义方法：返回平均成绩
     func getAverageScore() -> Double {
     //在swift开发中，如果使用当前对象的某一个属性，某一个方法时，不需要加self
     return (mathScore + chineseScore)*0.5//不建议这么做
     }
     */
}

//创建对象
let stu = Student()
//给对象的属性赋值
stu.age = 10
stu.name = "zhf"
stu.mathScore = 65.98
stu.chineseScore = 98.34

print(stu.age)

if let name = stu.name {
    print(name)
}

let averageScore = (stu.mathScore + stu.chineseScore)*0.5

//给类的属性进行赋值
Student.courseCount = 3




class Car: NSObject {
    var name : String?
    var age : Int = 0
    
    override init() {
        //在构造函数中，如果没有明确super.init(),那么系统会帮助调用super.init()
        print("----------")
    }
    
    //自定义构造函数
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    //    init(dict:[String:AnyObject]) {
    //        let tempname = dict["name"]
    //        //tempname是一个AnyObject？转成String？
    //        //as？最终转成的类型是一个可选类型
    //        //as！最终转成的类型是一个确定类型
    //        name = tempname as? String
    //
    ////        let tempage = dict["age"]
    //////        age = tempage as! Int//有问题，不能强制解包
    ////        let tempage_1 = tempage as? Int
    ////        if tempage_1 != nil {
    ////            age = tempage_1!
    ////        }
    //        //上面的写法可以写成底下的形式
    //        if let tempage = dict["age"] as? Int {
    //            age = tempage
    //
    //        }
    //    }
    init(dict:[String:AnyObject]) {
        super.init()
//        setValuesForKeysWithDictionary(dict)
        setValuesForKeys(dict)
        //自己在前边调用super.init()，系统调用的话会在set方法底下
    }
    
    
}

let car = Car()
let car_1 = Car(name: "zhf",age: 18)
//print(car_1.name)
print(car_1.name as Any)

// ------------

//Lazy intialization

// ------------
class ViewA {
    lazy var view: UIView = {
        let view = UIView()
        return view
    }()
}

// ------------
struct Man {
    init() {
        print("I am a man")
    }
}

let Tom = { () -> Man in
    let m = Man()
    return m
}

let realTom = Tom()

// ------------

let john = { () -> Man in
    let m = Man()
    return m
}()

// ------------
let realBen:Man = {
    let m = Man()
    return m
}()

// ------------

func add(numA: Int,numB: Int) -> Int {
    return numA + numB
}
add(numA: 1, numB: 3)

let varAdd = add
varAdd(2, 6)



// ------------
let anotherAdd: (Int, Int) -> Int = { (numA, numB) in
    return numA + numB
}

let sum = anotherAdd(4, 5)








