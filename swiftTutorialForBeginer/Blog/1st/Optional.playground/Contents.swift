////var a: Int = 1
////var b: Int! =  nil
////
////a = 1
//////b = 1
////type(of: a)
////type(of: b)
////a + b
//
////var sample: Int?
////print(sample)
//////nil
////
////var anotherSample: Int
////print(anotherSample) ここでエラー
//
////let c: String = "a"
//
////let a: Int = 1
////let b: Int = 2
////
////a + b
////
////let c: Int? = 1
////let d: Int? = 2
//////c + d エラー
//
//
//
//
////var a: Int? = 1
//
//
//func sample() {
//    var a: Int? = 1
//    guard let aa = a else {
//        print("aはnilです。")
//        return
//
//    }
//    print(aa)
//}
//
//
//sample()
//
//
//class MyClass {
//    var a: Int
//    func myFunc() -> Int{
//        return self.a
//    }
//    init(_ b: Int) {
//        self.a = b
//    }
//}
//
//var myClass: MyClass? = MyClass(1)
//
//var myClass2: MyClass? = nil
//
//var bb = myClass?.a
////1
//var aaa = myClass?.myFunc()
////1
//var aaaaa = myClass2?.a
//nil
//myClass2?.myFunc()
//nil


//let nilInt: Int? = nil
//
//var someInt: Int = nilInt ?? 1
////1
//
//let notNilInt: Int? = 100
//
//var anotherInt: Int = notNilInt ?? 1
////100

//let sampleTuple: (Int, String) = (1, "a")
//sampleTuple.0
////1
//sampleTuple.1
////a
//let sampleTuple: (Int, (Int, String)) = (1, (1, "a"))

//let sampleTuple = (int: 2, string: "b")
//sampleTuple.int
//
//sampleTuple.string

//
let (sampleInt, sampleString): (Int, String) = (1, "a")

sampleInt

sampleString

let a: Void = print("aa")

a
//出力結果: aa



//func aa(a: Int);Int -> Int {
//    return a
//}
