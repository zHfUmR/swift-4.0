//: Playground - noun: a place where people can play

//1.swift导入框架
import UIKit

//2.定义标识符
//定义的标识符必须告诉编译器是一个常量还是一个变量
//声明变量用var修饰
//声明常量用let修饰
//let／var 标识符的名称 ： 标识符的数据类型 ＝ 值
let a : Int = 20
// a = 30    错误的写法，常量不可以再修改
var b : Double = 1.44
b = 2.44

//3.语句的结束
/**
 *  如果一行中只有一条语句分号可以不加；多条语句必须要以；分割
 */

//4.打印内容
print(a)
print(b)

//MARK:
//1.在真实使用的过程中，建议先定义常量，如果需要修改再修改为变量（保证数据安全）
//2.是指向的对象不可以再进行修改，但是可以通过指针获得对象后，修改对象内部的属性


//swift中创建对象
let view:UIView = UIView()
//常量不可修改  不能这么写  view = UIView(),可以改为var之后再进行指向
view.backgroundColor = UIColor.red

view.frame = CGRect(origin: CGPoint(x:50,y:200), size: CGSize(width: 100, height: 100))

view.alpha = 0.5
//BOOL -> true / false
view.isHidden = true

//MARK:swift中的类型推导
//1.swift是强类型的语言
//2.swift中任何一个标识符都有明确的类型
// --- 如果定义一个标识符时有直接进行赋值，标识符后面的类型可以省略
// --- 因为swift有类型推导，会自动根据后面的值来推导前面标识符的数据类型
//let num : Int = 10
let num = 10
let num_1 = 2.44

let view_1 = UIView()

let num_2 : Int
num_2 = 20








        
