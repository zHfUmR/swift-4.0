//: Playground - noun: a place where people can play

import UIKit

//swift中的基本运算时必须保证类型一致，否则会出错
/*
 --- 相同类型之间才可以进行运算
 --- swift中没有隐式转换
 */
/*
 //在OC中有隐式转换，swift中没有
 int m = 20;
 int n = 30.5;
 int result = m + n;
 */
let m = 20;
let n = 30.4;

// 数据类型的转换

//将整形转换为浮点型：Double（标识符）
let tempM = Double(m)
let result = tempM + n

//将浮点型转换为整形：Int（标识符）
let tempN = Int(n)
let result_1 = tempN + m


