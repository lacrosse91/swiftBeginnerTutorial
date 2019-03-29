import Cocoa

var str = "Hello, playground"

//struct MyStruct {
//    var a: Int = { () -> Int in
//        print("aが初期化されます")
//        return 1
//    }()
//
////    var lazyA: Int = someFunc(a) これはエラー
//
//    func someFunc(_ a: Int) -> Int {
//        return a
//    }
//}


//var myStruct = MyStruct()
//print("MyStructのインスタンスが作成されました")
//myStruct.lazyA

/*
 var プロパティの名前: 型　{
    get {
        値を返す処理
    }
    set {
        値を代入する処理。newValueでアクセスできる
    }

 }
 */


struct Price {
    var price: Int
    var tax: Double
    var taxIncludePrice: Int {
        get {
            return Int(Double(price)*(1 + tax))
        }
        set {
            self.price = Int(Double(newValue)/(1 + tax))
        }
    }
    init (price: Int, tax: Double) {
        self.price = price
        self.tax = tax
    }
}

var a = Price(price: 100, tax: 0.1)

a.taxIncludePrice = 11

a.price


struct Triangle {
    var base: Double
    var height: Double

    var area: Double {
        return base * height / 2.0
    }
}

var triangle = Triangle(base: 10.0, height: 10.0)
triangle.area
//50


enum Signal: String {
    case red
    case blue
    case green


}

var red: Signal = .red

red.rawValue
//red


var blue = Signal.init(rawValue: "blue")
blue?.rawValue
//blue


enum Trade {
    case buy(stock: String, amount: Int)
    case sell(stock: String, amount: Int)

    func order() -> () {
        switch self {
        case .buy(let stock, let amount):
            print("\(stock)を\(amount)株買う")
        case .sell(let stock, let amount):
            print("\(stock)を\(amount)株売る")
        }
    }
}


var buy: Trade = .buy(stock: "Apple", amount: 100)
buy.order()
//Appleを100株買う
