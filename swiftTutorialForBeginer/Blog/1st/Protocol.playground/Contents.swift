import Cocoa

var str = "Hello, playground"

struct MyInt {
    var value: Int
}

extension MyInt: Equatable {
    static func ==(lhs: MyInt, rhs: MyInt) -> Bool {
        return lhs.value == rhs.value
    }
}

var a = MyInt(value: 3)

var b = MyInt(value: 3)

a == b
//true

protocol MyProtocol {
    associatedtype AssociatedType: Equatable
    var myValue: AssociatedType { get set }
    func myFunc(myValue: AssociatedType) -> AssociatedType
    mutating func changeMyValue() -> Void
}

struct MyStruct1: MyProtocol {
    var myValue: Int
    func myFunc(myValue: Int) -> Int {
        return myValue
    }
    mutating func changeMyValue() {
        self.myValue = 1
    }
}

struct MyStruct2: MyProtocol {
    var myValue: Int
    func myFunc(myValue: Int) -> Int {
        return myValue
    }
    mutating func changeMyValue() {
        self.myValue = 1
    }
}
//
////struct MyStruct2: MyProtocol {
////    let myValue: Int エラー
////}
//struct MyStruct3: MyProtocol {
//    var myValue: Int {
//        get {
//            return self.myValue
//        }
//        set {
//            self.myValue = newValue
//        }
//    }
//}


protocol Protocol1 {
    var a: Int { get set }
}

extension Protocol1 {
    var returnA: Int {
        return self.a
    }
}


struct Struct1: Protocol1 {
    var a: Int
}
struct Struct2: Protocol1 {
    var a: Int
    var returnA: Int {
        return 1
    }
}

//protocol Protocol2 {
//    var b: Int { get set }
//}
//
//protocol Protocol3: Protocol1, Protocol2 {
//    var c: Int { get set }
//}
//
//struct SomeStruct: Protocol3 {
//    //a,b,c全て定義する必要がある
//    var a: Int
//    var b: Int
//    var c: Int
//}
//
//protocol ClassOnly: class {
//
//}


extension Equatable where Self == Int {
    func str() -> String {
        return "\(self)"
    }
}


var myInt: Int = 1

myInt.str()
//1

var myString: String = "a"

//myString.str() これはエラー


struct MyStruct {
    var myValue: Int = 1 {
        willSet {
            print("プロパティに代入される値は\(newValue)")
            print("プロパティの値は\(self.myValue)")
        }
        didSet {
            print("プロパティに代入される前の値は\(oldValue)")
            print("プロパティの値は\(self.myValue)")
        }
    }
}

var myStruct = MyStruct()

myStruct.myValue = 10
