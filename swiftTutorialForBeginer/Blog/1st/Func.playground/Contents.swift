import Cocoa

/*
 func 関数名(引数1: 型, 引数2: 型) -> 戻り値の型 {
    コード
    return 戻り値
 }_
 */


//func plus(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//
//var c: Int = plus(1, 1)
//
//func hello() -> String {
//    return "こんにちは"
//}
//
//var a: String = hello()
////こんにちは
//
//func someFunc(a: String) {
//    print(a)
//}
//
//someFunc(a: "カワウソ")
////カワウソ
//
//
//func minMax(array: [Int]) -> (min: Int, max: Int) {
//    var currentMin = array[0]
//    var currentMax = array[0]
//    for value in array[1..<array.count] {
//        if value < currentMin {
//            currentMin = value
//        } else if value > currentMax {
//            currentMax = value
//        }
//    }
//    return (currentMin, currentMax)
//}
//
//let (min, max): (Int, Int) = minMax(array: [2, 5, 3, 7, 1, 8, 6])
//print("min is \(min), max is \(max)")
//
//
//
//
//func plus(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//
//func printPlus(_ plus: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("合計は\(plus(a, b))")
//}
//
//printPlus(plus, 1, 1)
//
//func returnPlus() -> (Int, Int) -> Int {
//    return plus
//}
//
//var plusFunc: (Int, Int) -> Int = returnPlus()
//plusFunc(1, 1)//2

//func plus(_ a: Int, _ b: Int) -> Int {
//    return a + b
//}
//
//plus(1, 1)
////2

//let plus = {(Int, Int) -> Int in
//    $0 + $1
//}
//let plus: (Int, Int) -> Int = { $0 + $1 }
//
//plus(1, 1)
////2
//
//let numbers: [Int] = [2, 5, 1, 3, 4]
//
//let sortedNumbers = numbers.sorted{ $0 > $1 }
//print(sortedNumbers)


//func someFunc() {
//    var a: Int = 1
//    print("a")
//}

//a//使用出来ない


let array = ["a", "b", "c", "d"]

//for (k, v) in array.enumerated() {
//    print("\(k), \(v)")
//}
array.count


let someClosure: () -> String
do {
    let str = "str"
    someClosure = {
        return str
    }
}

someClosure()
//str
//someClosureというクロージャにより、スコープ内にアクセスできる

let increment: () -> Int

do {
    var count = 0
    increment = {
        count += 1
        return count
    }
}

increment()
//1
increment()
//2

//var queue: [() -> Void] = [{ print("最初からあるよ") }]
//
//func someFunction(_ operation: @escaping () -> Void) {
//    queue.append(operation)
//}
//
//someFunction {
//    print("実行されました")
//}
//
//someFunction {
//    print("done")
//}
//
//queue.forEach{ $0() }


func and(_ lhs: Bool, _ rhs: @autoclosure () -> Bool) -> Bool {
    if lhs {
        let rhs = rhs()
        if rhs {
            return true
        }
    }
    return false
}


func lhs() -> Bool {
    print("lhs")
    return false
}

func rhs() -> Bool {
    print("rhs")
    return true
}

and(lhs(), rhs())//false


func myFunc(_ str: String, _ handler: (String) -> Void) -> Void{
    handler(str)
}

var myHandler: (String) -> Void = { print($0) }

myFunc("hello", myHandler)

myFunc("kawauso", { str in print(str)} )

//トレイリングクロージャー

myFunc("Swift"){ str in print(str) }

