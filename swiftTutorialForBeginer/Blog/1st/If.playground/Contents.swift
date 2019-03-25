import Cocoa
//
//var str = "Hello, playground"
//
///*
// if 条件　{
//    条件がtrueの時に実行される
// }
// */
//
////let score: Int = 50
////
////if score >= 60 {
////    print("合格")
////} else if score >= 45  {
////    print("追試")
////} else {
////    print("不合格")
////}
////追試
//
//let myOptionalInt: Int? = 3
//
//if let myInt = myOptionalInt {
//    print(myInt)
//}
////3
//
//
//let myNilInt: Int? = nil
//
//
//if let myInt = myNilInt {
//    print(myInt)
//} else {
//    print("値はnilです")
//}
////値はnilです。
//
//let optionalA: Int? = 1
//let optionalB: Int? = 2
//
//if let a = optionalA, let b = optionalB {
//    print("\(a),\(b)")
//}
////1,2
//
//let a: Any = 10
//
//if let intA = a as? Int {
//    print(intA)
//}
//
//
//
//let myScore: Int = 85
//
//if 80 <= myScore && myScore < 90 {
//    print("優")
//}
////優
//let person: String = "student"
//
//if person == "child" || person == "student" {
//    print("ok")
//}
////ok
//
//let score: Int = 92
//
//if case 90...100 = score {
//    print("秀")
//}
//秀

//func test() -> Void {
//    let score: Int = -10
//
//    guard score >= 0 else {
//        print("点数は0点以上でなければあなりません")
//        return
//    }
//    print("あなたの点数は\(score)点です")
//}
//
//test()


//func test() {
//    let optionalScore: Int? = nil
//    guard let score = optionalScore else { return }
//    print(score)
//}
//test()


var score: Int = 85

//switch score {
//case 0..<60:
//    print("不可")
//case 60..<79:
//    print("可")
//case 80..<99:
//    print("優")
//case 100:
//    print("優")
//
//}


//var a: Int? = 1
//
//switch a {
//case .some(let aa) where aa > 0:
//    print("\(aa)は0より大きい整数です。")
//case .some(let aa) where aa <= 0:
//    print("\(aa)は0以下の整数です。")
//default:
//    print("aはnil")
//}

enum Color {
    case red
    case blue
    case green
}

let someColor: Color = .blue

switch someColor {
case .red, .blue:
    print("赤か青")
default:
    print("緑")
}


//for i in intArray.enumerated() {
//    print(i)
//}
//
//for i in 1...5 {
//    print(i)
//}

let someDict: [Int: String] = [1: "a", 2: "b", 3: "c"]

for (k, v) in someDict {
    print("\(k), \(v)")
}

//let a: String = "abcdefg"
//
//for i in a {
//    print(i)
//}
//let intArray: [Int] = [1, 2, 3, 4, 5]
//
//for case 1...3 in intArray {
//    print("1以上3以下")
//}


var sampleInt: Int = 0

while sampleInt < 0 {
    print("Hello")
}


repeat {
    print("こんにちは")
} while sampleInt < 0

//let a: Int = 0
//
//switch a {
//case 0:
//    print("通る")
//    break
//    print("通らない")
//default:
//    break
//}

let intArray: [Int] = [1, 2, 3, 4, 5]

for i in intArray {
    if i % 2 == 0 {
        print("処理を抜ける")
        continue
    }
    print("\(i)")
}
