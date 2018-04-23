//: Playground - noun: a place where people can play

import UIKit

//概念：在OC开发中，如果一个变量暂停不使用，可以赋值为0（基本属性类型）或者赋值为空（对象类型）；在swift中，nil是一个特殊的类型，因为个真实的基本类型不匹配是不能赋值的（swift是强类型语言）但是在开发中在所难免

//可选类型的取值：空值 、 有值


//var name : String
//name = "zhf"


//swift中有规定：对象中的任何属性在创建对象时，都必须有明确的初始化值
//class student: NSObject {//类里的属性一般定义为var
//    var name : String          错误的写法
//    var name : String = nil    错误的写法
//}


//1>常规方法
var name : Optional<String> = nil
//2>语法糖(常用)
var gender : String? = nil

//给可选类型赋值
gender = "man"

//取出可选类型中的值
// 可选类型 + ！ ： 强制解包
print(gender!)

//强制解包是非常危险的操作，如果可选类型为nil，强制解包系统会崩溃
//在强制解包前需要进行判断是否为nil

if gender != nil {
    print(gender!)
}


//可选绑定
//1>判断gender是否有值，如果没有值，直接不执行{}
//2>如果gender有值，系统会自动将gender进行解包，并且将解包后的结果赋值给tempGender

//写法一：不常用
if let tempGender = gender {
    print(tempGender)
}

//写法二：常用
if let gender = gender {
    print(gender)
    print(gender)
    print(gender)
    print(gender)
}


//可选类型的应用场景

//通过一个字符串创建一个NSURL对象
let url = NSURL(string:"www.baidu.com")

//let url:NSURL? = NSURL(string:"www.baidu.com")

//根据URL创建NSURLRequest对象
if let url = url {
    let request =  NSURLRequest(url: url as URL)
    print(request)
}




































