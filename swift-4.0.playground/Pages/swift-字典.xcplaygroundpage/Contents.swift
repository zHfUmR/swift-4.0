//: Playground - noun: a place where people can play

import UIKit


//1.定义字典
//let -> 不可变字典

//系统会自动判断[]内是键值对还是一个一个的元素
let dict = ["key":"value","name":"zhf","age":18] as [String : Any]

//var -> 可变字典
//AnyObject -> 一般指定类型
//N
var dictM = [String:AnyObject]()



//2.对可变字典的基本操作

//2.1>添加元素
dictM["name"] = "zhf" as AnyObject
dictM["age"]  = 18 as AnyObject
dictM["sex"]  = "m" as AnyObject
dictM
//2.2>删除元素
dictM.removeValue(forKey: "sex")
dictM

//2.3>修改元素
//区别：如果字典中已经有了对应的key，那么会直接修改原来的key中保存的value
//如果字典中没有对应的key，那么添加对应的key/value
dictM["name"] = "umr" as AnyObject
dictM

//2.4>获取某一个元素
dictM["age"]




//3.遍历字典
//3.1>遍历字典中所有的key

for key in dictM.keys {
    print(key)
}

//3.2>遍历字典中所有的value

for value in dictM.values {
    print(value)
}
//3.3>遍历字典中所有的键值对
for (key,value) in dictM {
    print(key)
    print(value)
}

//4.合并字典

 /**
  *  即使类型一致，也不能相加合并
  */

var dict1 = ["name":"umr","number":"999999","age":24] as [String : Any]
let dict2 = ["name":"kkk","number":"933999","age":18] as [String : Any]
        
for (key,value) in dict2 {
    dict1[key] = value
}
print(dict1)



