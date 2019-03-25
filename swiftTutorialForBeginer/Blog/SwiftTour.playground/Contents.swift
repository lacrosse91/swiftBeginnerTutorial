import Cocoa

//var str = "Hello, playground"

print("Hello, world!")
//"Hello, world!"

//宣言
var myInt: Int = 10
let myString: String = "カワウソ"

//文字列への埋め込み
let label = "The width is "
let width = 100
let widthLabel = label + String(width)

let myName = "Mike"
let intro = "I am \(myName)."

//複数行のString
let quotation = """
dog
cat
"""

//Array
var array = [1, 2, 3]

array.append(4)
//[1, 2, 3, 4]

//Dictionary

var dict = [1: "a", 2: "b", 3: "c"]

//dict[4] = "d"

//if

let bool = true

if bool {
    print("true")
} else {
    print("false")
}

//for
var sum = 0
for i in 1..<5{
    sum += i
}
sum
//10

//switch

var score = 100
switch score {
case 0..<60:
    print("赤点")
case 60..<80:
    print("そこそこ")
case 80..<100:
    print("すごい")
case 100:
    print("天才")
default:
    print("????")
}
//天才

//while
var n = 2
while n < 100 {
    n *= 2
}
n
//128

//関数
func myFunc(a: Int) -> Int {
    return a
}

let b = myFunc(a:  1)

//クロージャー
let myClosure = {(a: Int) -> Int in a }

let c = myClosure(3)

//ジェネリクス

func swapTwoValues<T>(_ a:  T, _ b: T) -> (T, T){
    return (b, a)
}

let swapInt = swapTwoValues(1, 2)
let swapString = swapTwoValues("cat", "dog")
