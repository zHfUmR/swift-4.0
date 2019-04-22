//: [Previous](@previous)

import Foundation
import UIKit

//Optional
/*
 - An Optional is just an enum
 
 */
enum Optional<T> { //the <T> is a generic like as in Array<T>
    case none
    case some(T)
}
//eg:
/*
 
let x:String? = nil
...is...
let x = Optional<String>.none
 
let x:String? = "hello"
...is...
let x = Optional<String>.some("hello")
 
 let y = x!
 ...is...
 switch x {
    case some(let value): y = value
    case none://raise an exception
 }
 
 
 let x: String? = ...
 if let y = x {
    //do sth with y
 }
 
 ...is...
 switch x {
    case .some(let y):
        //do sth with y
    case .none:
        break
 }
 
 */

///Optionals can be "chained"
var display: UILabel?
/*
if let temp1 = display {
    if let temp2 = temp1.text {
        let x = temp2.hashValue
        ...
    }
}
...with Optional chaining useing ? instead of ! to unwrap,this becomes ...
if let x = display?.text?.hashValue {...}//x is an Int
let x = display?.text?.hashValue {...}//x is an Int ?
*/

///There is also an Optional "defaulting" operator ??
//what if we want to put a string into a UIlabel, bur if it's nil,put""(space)in the UIlabel?
display = UILabel()
let s: String? = "m"//might be nil
if s != nil {
    display?.text = s
}else {
    display?.text = ""
}
//... can be expressed much more simply this way ...
display?.text = s ?? ""

///Tuples 元组
/*
 What is a tuple?
 It is nothing more than a grouping of values.
 U can use it anywhere u can use a type
 
 let x: (String,Int,Double) = ("hello",5,0.85) // the type of x is a "tuple"
 let (word,number,value) = x //this names the tuple elements when accessing the tuple
 print(word) // prints hello
 print(number) // prints 5
 print(value) // prints 0.85
 
 //...or the tuple elements can be named when the tuple is declared(this is strongly preferred)..
 let x: (w:String,i:Int,v:Double) = ("hello",5,0.85)
 print(x.w) // prints hello
 print(x.i) // prints 5
 print(x.v) // prints 0.85
 
 //Tuples as return values
 //U can use tuple to return multiple values from a function or method..
 func getSize() -> (weight: Double, height: Double) {return (250, 80)}
 
 let x = getSize()
 print("weight is \(x.weight)") // weight is 250.0
 // ..or ..
 print("height is \(getSize().height)") // height is 80.0
 */

///Range
/*
 .A Range in Swift is just two end points
 .A Range can represent things like a selection in some text or a portion of an Array
 .Range is generic(e.g. Range<T>),but T is restricted(e.g. comparable)
 .This is sort of a pseudo-representation of range...
 
 */
struct Range<T> {
    var startIndex: T
    var endIndex: T
}
// ..<  or ...
let array = ["a","b","c","d","e"]
let a = array[2...3]
let b = array[2..<3]
//let c = array[6...8]
//let d = array[4...1]

// A String subrange is not Range<Int>(it's Range<String.Index>)
//let e = "hello"[2...4]    - this != "ll",in fact,it won't even compile
//let f = "hello"[start..<end]  - this is possible;we'll explain start and end a bit later
for _ in 0..<20 {} //c-like for (i = 0,i < 20,i++)
//if Double c-like for (i = 0.5,i <= 15.25,i += 0.3)
for _ in stride(from: 0.5, through: 15.25, by: 0.3) {}
//for i in stride(from: 0.5, to: 15.25, by: 0.3) {}

///Data Structrures in Swift 数据结构
/*
 .classes .structures .enumerations
 these are the 3 of the 4 fundamental building blocks of data structures in Swift
 .protocols
 */
//相似点
//1.declaration syntax
class ViewController:UIViewController {
    //类有super class
}
struct CalculatorBrain {
    
}
enum Operation {
    
}
//2.属性和方法 properties，functions
//func doit(argx argi:Type) -> ReturnValue {}
//var storedProperty = <initial value>(not enum)
//var computedProperty: Type {
//    get{}
//    set{}
//}
//***** enum 中不能有任何存储的属性
//3.Initializers(again,not enum)...
//init(arg1x arg1i: Type,arg2x arg2i: Type,...) {}

//不同点
//1.Inheritance 继承（class only）
//2.value type(值类型)（struct ，enum）vs. Reference type（引用类型）(class)


///Methods

//func foo(externalFirst first:Int, externalSecond second: Double) -> Double{
//    var sum = 0.0
//    for _ in 0..<first { sum += second }
//    return sum
//}
//
//func bar() {
//    let result = foo(externalFirst: 123, externalSecond: 5.5)
//    print("\(result)")
//}

// _ 一般用于第一个参数外部名称并且足够说明参数
//func foo(_ first:Int, externalSecond second: Double) -> Double{
//    var sum = 0.0
//    for _ in 0..<first { sum += second }
//    return sum
//}
//
//func bar() {
//    let result = foo(123, externalSecond: 5.5)
//    print("\(result)")
//}

func foo(first:Int, second: Double) -> Double{
    var sum = 0.0
    for _ in 0..<first { sum += second }
    return sum
}

func bar() {
    let result = foo(first: 123, second: 5.5)
    print("\(result)")
}

//重写父类方法 override





