//: Playground - noun: a place where people can play

import UIKit

/*
 func 函数名(参数:参数类型，参数：参数类型，。。。) -> 返回值类型 {
 代码块
 return 返回值
 }
 */


//1.>无参无返

func about() -> Void{
    print("iPhone7")
}
about()

func about_1() {
    print("iPhone6 Plus")
}
about_1()

//2.>无参有返

func readMessage() -> String {
    return "ggwp"
}
print(readMessage())
//3.>有参无返

func callPhone(phoneNumber:String){
    print("打电话给\(phoneNumber)")
}
callPhone(phoneNumber: "+86 110")

//4.>有参有返

func sum(num1:Int,num2:Int) -> Int {
    return num1 + num2
}

//注意一：内部参数、外部参数
//内部参数：在函数内部可以看到的参数就是内部参数，默认情况下所有的参数都是内部参数
//外部参数：在函数外部可以看到的参数就是外部参数，默认情况下从第二个参数开始既是内部参数也是外部参数
//如果希望第一个参数也是外部参数，可以在标识符前给该参数添加一个别名
sum(num1: 10, num2: 10)//



//注意二：swift中的默认参数

func makeCoffee(coffeeName : String = "雀巢") -> String {
    return "制作了一杯\(coffeeName)咖啡☕️"
}

makeCoffee(coffeeName: "拿铁")
makeCoffee(coffeeName: "卡布奇诺")
makeCoffee(coffeeName: "蓝山")

makeCoffee()


//注意三：可变参数

func sum(num : Int...) -> Int {
    var result = 0
    for item in num {
        result += item
    }
    return result
}

sum(num: 10,10,10,10)


//注意四：指针类型

var m = 20
var n = 30

//func swapNumber(var m m : Int,var n : Int) {
//    let temp = m
//    m = n
//    n = temp
//}
//swapNumber(m: 7, n: 8)
//print("m:\(m),n:\(n)")

func swapNum( m : inout Int, n : inout Int) -> Void {
    let temp = m
    m = n
    n = temp
}
swapNum(m: &m, n: &n)
print("m:\(m),n:\(n)")

//注意五：函数的嵌套使用（了解）
func test(){
    
    func demo(){
        print("demo")
    }
    demo()
    print("test")
}

test()








