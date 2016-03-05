//
//  main.swift
//  ControlFlow
//
//  Created by JayWon on 14-6-16.
//  Copyright (c) 2014年 www.iphonetrain.com 无限互联3G学院. All rights reserved.
//

import Foundation

//for - in
for index in 1...5 {
    println("index is \(index)")
}

//如果不需要知道区间内每一项的值,可以使用(_)来代替变量名忽略对该值的访问
//求3的10次幂
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
println("answer is \(answer)")

//for - in 遍历数组
let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    println("name is \(name)")
}


//for - in 遍历字典
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}


//for - in 遍历字符串
for character in "Hello" {
    println(character)
}


//for条件递增
for var index=0; index<3; ++index {
    println("index is \(index)")
}

//while循环
var va = 1
while va < 5 {
    println("while index is \(va)")
    va++
}


//do-while循环
var vb = 1
do{
    println("do while index is \(vb)")
    vb++
}while vb < 5



//if
let 今天天气好 = true
if 今天天气好 {
    println("我们就去爬山")
}else {
    println("我们就在教室学习")
}


//switch
/*
Swift 中的switch，当匹配的 case 分支中的代码执行完毕后，程序会终止switch语句，而不会继续执行下一个 case 分支。这也就是说，不需要在 case 分支中显式地使用break语句。这使得switch语句更安全、更易用，也避免了因忘记写break语句而产生的错误
*/
let charA:Character = "A"
switch charA {
    case "a", "A":  //如果想匹配多个条件,可以使用(,)隔开
        println("The letter a")
    case "A":       //每一个case分支中必须包含至少一条语句
        println("The letter A")
    default:
        println("default")
}


//case分支的模式也可以是一个值的区间范围
let count = 3_000_000_000
let countedThings = "stars in the Milky Way"
var naturalCount: String
switch count {
case 0:
    naturalCount = "no"
case 1...3:
    naturalCount = "a few"
case 4...9:
    naturalCount = "several"
case 10...99:
    naturalCount = "tens of"
case 100...999:
    naturalCount = "hundreds of"
case 1000...999_999:
    naturalCount = "thousands of"
default:
    naturalCount = "millions and millions of"
}
println("There are \(naturalCount) \(countedThings)")



//匹配元组.(x, y)坐标
let somePoint = (0, 0)
switch somePoint {
case (0, 0):
    println("(0, 0) is at the origin")
case (_, 0):
    println("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    println("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    println("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    println("(\(somePoint.0), \(somePoint.1)) is outside the box")
}


//值绑定
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):    //此时x只是一个占位符, 用来临时的获取switch条件中的一个或多个值
    println("x value is \(x)")
case (0, let y):
    println("y value is \(y)")
case let (x, y):
    println("somewhere else at (\(x), \(y))")
}


//Where 附加条件
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let(x, y) where x == y:
    println("case 0")
case let(x, y) where x == -y:
    println("case 1")
case let(x, y):
    println("case 2")
}



//控制传递语句
//continue
for index in 1...5 {
    if index == 3 {
//        continue
        break
    }
    println("index is \(index)")
}


//贯穿
let integer = 5
var desc = "The number \(integer) is"
switch integer {
case 2, 3, 5, 7, 11:    //质数
    desc += " a prime number, and also"
    fallthrough
default:
    desc += " an integer"
}
println("desc is \(desc)")



//标签语句
//根据分数评等级
//题目要求,碰到异常的分数,直接终止循环
var score = [96, 83, 43, 101, 66, 70, -5, 99]
First: for s in score { //定义标签First
    switch s/10 {
    case 10:
        continue First  //使用标签
    case 9:
        println("\(s) 分为优秀")
    case 8:
        println("\(s) 分为良好")
    case 7:
        println("\(s) 分为中等")
    case 0:
        break First     //使用标签, 终止for循环。如果这里没有使用表情， break的将是switch
    default:
        println("\(s) 分为沒及格")
    }
}
