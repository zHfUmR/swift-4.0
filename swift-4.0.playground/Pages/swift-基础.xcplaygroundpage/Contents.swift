//: Playground - noun: a place where people can play

/*
 Swift 是一门全新的用于开发 iOS, OS X 以及 watchOS 应用的编程语言。不过，如果你有 C 或者Objective-C 语言开发经验的话，Swift 的许多地方都会让你感到熟悉。
 
 Swift 为所有 C 和 Objective-C 的类型提供了自己的版本，包括整型值的 Int ，浮点数值的 Double 和 Float ，布尔量值的 Bool ，字符串值的 String 。如同集合类型中描述的那样， Swift 同样也为三个主要的集合类型提供了更高效的版本， Array ， Set 和 Dictionary 。
 
 和 C 一样，Swift 用变量存储和调用值，通过变量名来做区分。Swift 中也大量采用了值不可变的变量。它们就是所谓的常量，但是它们比 C 中的常量更加给力。当你所处理的值不需要更改时，使用常量会让你的代码更加安全、简洁地表达你的意图。
 
 除了我们熟悉的类型以外，Swift 还增加了 Objective-C 中没有的类型，比如元组。元组允许你来创建和传递一组数据。你可以利用元组在一个函数中以单个复合值的形式返回多个值。
 
 Swift 还增加了可选项，用来处理没有值的情况。可选项意味着要么“这里有一个值，它等于 x”要么“这里根本没有值”。可选项类似于 Objective-C 中的 nil 指针，但是不只是类，可选项也可以用在所有的类型上。可选项比 Objective-C 中的 nil 指针更安全、更易读，他也是 Swift 语言中许多重要功能的核心。
 
 可选项充分证明了 Swift 是一门类型安全的语言。Swift 帮助你明确代码可以操作值的类型。如果你的一段代码预期得到一个 String ，类型会安全地阻止你不小心传入 Int 。在开发过程中，这个限制能帮助你在开发过程中更早地发现并修复错误。
 */


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

/*
 常量和变量
 常量和变量把名字（例如 maximumNumberOfLoginAttempts 或者 welcomeMessage ）和一个特定类型的值（例如数字 10 或者字符串 “Hello”）关联起来。常量的值一旦设置好便不能再被更改，然而变量可以在将来被设置为不同的值。
 */
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
/*
 这段代码可以读作：
 
 “声明一个叫做 maximumNumberOfLoginAttempts 的新常量，并设置值为 10 。然后声明一个叫做 currentLoginAttempt 的新变量, 并且给他一个初始值 0。”

在这个栗子中，登录次数允许的最大值被声明为一个常量，因为最大值永远不会更改。当前尝试登录的次数被声明为一个变量，因为这个值在每次登录尝试失败之后会递增。

 */
// 你可以在一行中声明多个变量或常量，用逗号分隔：

var x = 0.0, y = 0.0, z = 0.0

//注意 在你的代码中，如果存储的值不会改变，请用 let 关键字将之声明为一个常量。只有储存会改变的值时才使用变量。

//3.语句的结束
/**
  如果一行中只有一条语句分号可以不加；多条语句必须要以；分割
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








        
