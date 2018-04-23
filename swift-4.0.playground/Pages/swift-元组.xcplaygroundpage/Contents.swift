//: Playground - noun: a place where people can play

import UIKit

//1.使用数组定义一组数据
let array = ["asdas",1221,123] as [Any]
array[0]
array[1]


//2.使用字典定义一组数据
let dict = ["name":"zhf","age":18,"height":1.88] as [String : Any]
dict["name"]
dict["age"]

//3.使用元组(一般作为方法的返回值)
//3.1>元组基本的写法
let info = ("name",18,1.88)
info.0
info.1

//3.2>可以给元组中的元素起别名

let info_1 = (myName:"umr",myAge:18,myHeight:1.88)
info_1.myAge
info_1.myHeight
info_1.0


//3.3>元组中元素的别名，就是元组的名称

let (myName,myAge,myheight) = ("zhf",18,1.88)
myAge
myName



