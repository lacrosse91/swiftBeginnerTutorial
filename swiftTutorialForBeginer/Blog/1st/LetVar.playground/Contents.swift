import UIKit
import Foundation

var str = "Hello, playground"

//var kawauso: String = "カワウソ"
//
//var otter = "カワウソ"

//type(of: otter)//Strig.Type

var dog = "dog"

dog = "犬"//OK!

let cat = "cat"

//cat = "猫" エラー

//func sample() {
//    let a = 1
//    print(a)
//}
//
//
////print(a) エラー


//let a = 1
//
//func sample() {
//    print(a)//OK!!
//}
//
//sample()

let t = true //真
let f = !t//偽

//let a = true || true//真
//let b = true || false//真
//let c = false || false//偽
//let d = false || false || true//真

let maxInt: Int = Int.max
let minInt: Int = Int.min


//let sampleDouble: Double = 111111111
//let sampleFloat: Float = 111111111

let sampleInt: Int = 100
let a: Double = Double(sampleInt)
//100

let sampleFloat: Float = 1.0
let b: Int = Int(sampleFloat)
//1

1 == 0//false
1 != 0//true
1 < 0//false
1 <= 0//false
1 > 0//true
1 >= 0//true

log(2.7)

let sampleString: String = "Hello, \"kawauso\""

//let anotherString: String = 'hello' エラー


//let s: String = "Hello \nkawauso"
//print(s)

let english: Int = 80

let score: String = "英語の得点は\(english)"

////エラー
//let story: String = "祇園精舎の鐘の声、
//所業無常の響あり"
let story: String = """
祇園精舎の鐘の声、
所業無常の響あり
"""

let kawauso: String = "カワウソ"
let firstIndex: String.Index = kawauso.startIndex


let thirdIndex: String.Index = kawauso.index(kawauso.startIndex, offsetBy: 2)

let char: Character = kawauso[thirdIndex]

let i: Int = 100
let intToString: String = String(i)

let s: String = "100"
let stringToInt: Int? = Int(s)

let hello: String = "hello"
let helloToInt: Int? = Int(hello)

let animal: String = "animal"

var perfect: String = "perfect"
var human: String = "human"
let perfectHuman: String = perfect+human

human.append("n")

perfect.append(human)

//let intArray: [Int] = [1, 2, 3]
//
//intArray[0]
////1
//intArray[2]
////2

//var array: [[Int]] = [[1, 0], [0, 1]]

var intArray: [Int] = [1, 2, 3, 4]
intArray.insert(10, at: 2)
print(intArray)

let array1: [Int] = [1, 2, 3]
let array2: [Int] = [4, 5, 6]
let newArray: [Int] = array1 + array2

//let dict: [String: Int] = ["a": 1, "b": 2]

//let dict: [String: [String: Int]] = ["a": ["a": 1], "b": ["b": 2]]

//let value = dict["a"]
//1

var dict: [String: Int] = ["a": 1, "b": 2, "c": 3]

//更新
dict["a"] = 10

//追加
dict["d"] = 4

//削除
dict["a"] = nil

dict



