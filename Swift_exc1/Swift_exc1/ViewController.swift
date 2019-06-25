//
//  ViewController.swift
//  Swift_exc1
//
//  Created by Mac-Qke on 2019/6/24.
//  Copyright © 2019 Mac-Qke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var a = "jack"
        var b = "rose"
        swap(a: &a, with: &b)
    }
    
    //写一个具有两个参数（任何类型）的函数，它交换了两个变量的值。
    func swap<T>( a:inout T, with b:inout T) {
        (a,b) = (b,a)
    }
    
    //写一个满足下列要求的，命名为 flexStrings 的函数：
//    1. 函数必须接受0，1或2个字符串参数。
//    2. 返回函数参数连接起来的字符串。
//    3. 如果没有参数传递给函数，它将返回字符串“none”。
//    4. 函数体只使用一行代码可获得一个额外的飞镖extrashuriken。
    
    func flexStrings(s1:String = "",s2: String = "") -> String {
        return s1 + s2 == "" ? "none":s1 + s2
    }
    
    
    //写一个命名为 sumAny 的函数，它接受任何类型的0或更多的参数。函数应满足如下要求：
//    1. 这个函数将根据下面的规则用String返回传递过来的参数值的和。
//    2. 如果参数是一个空的字符串或一个数值0，结果添加-10。
//    3. 如果参数是一个正数的字符串（比如“10″，“-5″则不符合），添加到结果中。
//    4. 如果参数是一个Int值，添加到结果中。
//    5. 如果是其他值，则忽略，不添加到结果中。
  
    func sumAny(anys: Any...) -> String {
        return String((anys.map({item in
            switch item {
            case "" as String, 0 as Int:
                return -10
            case let s as String where Int(s)! > 0:
                return Int(s)!
            case is Int:
                return item as! Int
            default:
                return 0
            
            }
            }) as [Int]).reduce(0){
               $0 + $1
            })
    }
    
    //写一个命名为 countFrom(from:Int, #to:Int) 的函数，它将输出（比如通过 print() 或 println() ）从 from 到 to 的数值。你不可以使用任何循环、变量或者任何内建的数组函数。假定 from 的值小于to（输入是有效的）。
    func countFrom(from: Int, to:Int) {
        print(from)
        if from < to {
             countFrom(from: from + 1 , to: to)
        }
    }

}

