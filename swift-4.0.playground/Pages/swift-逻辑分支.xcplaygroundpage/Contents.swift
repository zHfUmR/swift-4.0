//: Playground - noun: a place where people can play

import UIKit

// OC －－－ if
//if (判断条件) {
//
//}
//1. swift --- if
// 1>if后面的（）可以省略
// 2>判断条件不再有非0即为真，判断条件必须有明确的真假（true ／ false）
let a = 10
if a > 0 {
    print("a大于0")
}else{
    print("a小于等于0")
}
//2.swift中else if的用法
let score = 92
if score < 0 || score > 100 {
    print("不合理分数")
}else if score < 60 {
    print("不及格")
}else if score < 80 {
    print("及格")
}else if score < 90 {
    print("良好")
}else if score <= 100 {
    print("优秀")
}


//3. 三目运算

let m = 20
let n = 30

/*
 var result = 0
 if m > n {
 result = m
 }else{
 result = n
 }
 */
let result = m > n ? m : n


//4.guard的使用
/**
 *  2.0新增的语法
 ＊ 与if语句非常类似，它设计的目的是提高程序的可读性
 ＊ guard语句必须带有else语句，语法如下：
 －－ 当条件表达式为true时跳过else语句中的内容，执行语句组内容
 －－ 条件表达式为false时执行else中的语句，跳转语句一般是return，break，continue和throw
 －－ 必须写在函数里边
 */
/*
 guard 条件表达式 else ｛
 //跳转语句
 break
 ｝
 语句组
 */
let age = 18
func online(age:Int) -> Void {
    //1.年龄判断
    guard age >= 18 else{
        print("不能去网吧上网")
        return
    }
    //多个条件判断用if－else进行多个嵌套，阅读行不强
    //用guard直接进行判断，不需要嵌套，符合条件会继续向下执行
    //2.是否带钱判断
    /*
     guard 带钱 else{
     print("回家取钱")
     return
     }
     */
    //3.是否带身份证判断
    /*
     guard 带钱 else{
     print("回家取身份证")
     return
     }
     */
    print("可以上网")
}
online(age: age)


//5.switch分支
//1>基本使用
// 0 : 男  1 : 女
let gender = 0
//switch后面的（）可以省略
//case后面的break也可以省略
switch gender{
case 0:
    print("男")
    fallthrough
case 1:
    print("女")
default:
    print("其他")
}
//2>基本用法补充
//2.1>如果系统某一个case中需要产生case穿透，可以在case结束后跟上fallthrough
//2.2>case后面可以判断多个条件，多个条件用逗号，分割
switch gender {
case 0,1:
    print("正常人")
default:
    print("其他")
}

//3.swift中的switch的特殊用法
//3.1>switch可以判断浮点型
let num_a = 3.14
switch num_a {
case 3.14:
    print("圆周率")
default:
    print("...")
}
//3.2>switch可以判断字符串
let mm = 20
let nn = 30

let opration = "+"

var result_q = 0

switch opration {
case "+":
    result_q = mm + nn
case "-":
    result_q = mm - nn
default:
    print("非法符号")
}

//switch支持区间判断
//区间：  开区间  0..<20 0~19  闭区间 0...20 0~20
let score_math = 80
switch score_math {
case 0..<60:
    print("不及格")
case 60..<80:
    print("及格")
case 80..<90:
    print("良好")
case 90...100:
    print("优秀")
default:
    print("非正常分数")
}


//6.循环
//OC的写法
//for(int i = 0 , i < 10 ,i++){
//    NSLog(@"%d",i);
//}

//C语言样式的for循环已经无效

//swift的写法
for i in 0 ..< 10 {
    print(i)
}

//for循环的for in写法(特殊)
//在swift中如果一个标识符不需要使用，可以用 _ 代替
for _ in 0...9 {
    print("hello world")
}

let test = "zhfzhfzhfzhfzhfzhf"
//for c in test.characters{
//    print(c)
//}
for characters in test{
    print(characters)
}


//while和do while循环

//OC的写法
/*
 while (a) {
 ....
 }
 */

//swift的写法
//1>while的()可以省略
//2>while后面没有非0为真
var number = 10
while number > 0 {
    print(number)
    number -= 1
}

//swift中的do while写成 repeat while

repeat{
    number += 1
    print(number)
}while number < 10



/**
 *  swift初体验
 1.导入框架
 import UIKit
 2.定义标识符
 必须告知系统标识符是一个变量还是一个常量
 let -> 常量  var -> 变量
 3.语句结束
 一行中只有一行可以省略；
 多行则用；分割
 4.打印内容
 print("hello")
 let a:Int = 30;print(a);
 */
/*
 ·开发中优先使用常量
 ·常量的本质是保存内部地址不可以被修改，但是可以通过内存地址拿到对应的对象，修改对象内部的属性
 */
/*
 数据类型
 1.整形&浮点型
 ·Int
 ·Double
 2.类型推导
 ·如果定义一个标识符时，有直接给该标识符赋值，那么会根据赋值的类型推导出前面标识符的类型
 ·option+左键查看
 3.swift中的基本运算
 ·相同类型才可以进行运算
 ·Double(numberInt)
 ·Int(numberDouble)
 */
/*
 逻辑分支
 1.if
 ·if后面的（）可以省略
 ·没有非0即为真
 2.else if
 3.三目运算
 4.guard
 ·guard 判断条件 else {return、break、continue} 语句块
 5.switch
 ·基本用法1.>switch后面的（）可以省略2.>case结束后可以省略break
 ·补充：1>fallthrough可以通透case  2>case后面可以判断多个条件，多个条件用逗号分隔
 ·switch判断浮点型
 ·switch判断字符串
 ·switch判断区间
 */
/*
 循环
 1.for循环
 2.while循环
 3.do while ---> repeat while
 */







