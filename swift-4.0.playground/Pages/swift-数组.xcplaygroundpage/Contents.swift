//: Playground - noun: a place where people can play

import UIKit


//1.定义数组
//1.1>定义不可变数组：使用let修饰标识符定义出来的数组就是不可变数组
let array_1                  = ["a","b","c","d","e"]//一般用这个方法
let array_2 :     [String]   = ["a","b","c","d","e"]
let array_3 :  Array<String> = ["a","b","c","d","e"]
//1.2>定义可变数组：使用var修饰标识符定义出来的数组就是可变数组
var arrayM = Array<String>()

var array_M = [String]()//一般用这个方法

//2.对可变数组的基本操作
//2.1>添加元素
array_M.append("sss")
array_M.append("aaa")
array_M.append("ddd")
//2.2>删除元素
array_M.remove(at: 0)
array_M
//2.3>修改元素
array_M[0] = "qqq"
array_M
//2.4>取出某一个元素
array_M[1]
//3.数组的遍历
//3.1>根据下标值进行遍历
for i in 0..<array_M.count {
    print(array_M[i])
}
//3.2>直接遍历数组中的元素
for name in array_M {
    print(name)
}
//3.3>遍历数组的前两个元素
for i in 0...2 {
    print(array_1[i])
}

for name in array_1[0..<2] {
    print(name)
}

//4.数组的合并
var array = ["s","d","a"]
for name in array_M {
    array.append(name)
}

//相同类型的数组才能进行合并
let resultArray = array_M + array




