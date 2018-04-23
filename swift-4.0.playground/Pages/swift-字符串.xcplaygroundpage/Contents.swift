//: Playground - noun: a place where people can play

import UIKit

//OC和swift中字符串的区别
//  ·在OC中字符串类型是NSString，在swift中是String
//  ·OC中字符串@""  ,swift中是 ""

//使用String的原因：
/*
 ·String是一个结构体，性能更高
 ·NSString是一个对象，性能略差
 ·String支持直接遍历
 ·swift提供String和NSString之间的无缝转换
 */

//1>定义字符串
let opration:String = "asdasd"
let str = "hello world"

//2>遍历字符串
for characters in str {
    print(characters)
}

//3>字符串的拼接
//3.1>两个字符串之间的拼接
let str1 = "zhf"
let str2 = "umr"

let str_end = str1 + str2

//3.2>字符串和其他标识符的拼接

let name = "zhf"
let age = 18
let height = 1.88

let info = "my name is \(name),my age is \(age),my height is \(height)m"

//3.3>拼接字符串时，字符串的格式化
let min = 2
let second = 8
String(format: "%02d:%02d" ,arguments:[min,second])

//3.4>字符串的截取
let urlString = "www.baidu.com"

//将String类型转换为NSString类型 （string as NSString）

let header = (urlString as NSString).substring(to: 3)
let middle = (urlString as NSString).substring(with: NSMakeRange(4, 5))
let footer = (urlString as NSString).substring(from: 10)

















