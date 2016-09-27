//: Playground - noun: a place where people can play

import UIKit


/*
 @interface Person : NSObject
 
 @property (nonautomic, copy) NSString *name;
 @property (nonautomic, assign) NSInteger age;
 
 - (instanceType)initWithName:(NSString *)name age:(NSInteger)age;
 - (instanceType)initWithDict:(NSDictionary *)dict;
 
 @end
 
 
 Person *p = [Person alloc] init];
 Person *p = [Person alloc] initWithName:@"why" age:18];
 */

class Person {
    var name : String = ""
    var age : Int = 0
    
    // 在Swift开发中, 如果在对象函数中, 用到成员属性, 那么self.可以省略
    // 注意: 如果在函数中, 有和成员属性重名的局部变量,那么self.不能省略
    
    
    
    // 注意: 如果有自定义构造函数, 那么会将系统提供的构造函数覆盖掉
    init() {
        
    }
    
    init(name : String, age : Int) {
        self.name = name
        self.age = age
    }
    
    // Dictionary<String, Any> --> [String : Any]
    init(dict : [String : Any]) {
        /*
        let dictName = dict["name"]
        name = dictName as! String
        */
        if let name = dict["name"] as? String {
            self.name = name
        }
        
        if let age = dict["age"] as? Int {
            self.age = age
        }
    }
}


let p1 = Person()
let p2 = Person(name: "why", age: 18)
let p3 = Person(dict: ["name" : "why", "age" : 18])

print(p3.name, p3.age)
