import Cocoa

var str = "Hello, playground"

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
// Prints "John Appleseed is being initialized"


/*
 If you assign the same Person instance to two more variables, two more strong references to that instance are established:
 */

reference2 = reference1
reference3 = reference1

/*
 If you break two of these strong references (including the original reference) by assigning nil to two of the variables, a single strong reference remains, and the Person instance is not deallocated:
 */
reference1 = nil
reference2 = nil

reference3 = nil

class Sample {
    let value: Int
    init (_ v: Int) {
        self.value = v
        print("インスタンス化されました")
    }
    deinit {
        print("インスタンスが破棄されました")
    }
}


var myClass1: Sample? = Sample(1)//参照カウント:1
//インスタンス化されました

var myClass2: Sample? = myClass1//参照カウント:2

myClass1 = nil//参照カウント:1

myClass2 = nil//参照カウント:0
//インスタンスが破棄されました

//トレーナークラス
class Trainer {
    let name: String
    weak var pokemon: Pokemon?
    init(_ n: String) {
        self.name = n
    }
    deinit {
        print("トレーナクラスのインスタンスが破棄されました")
    }
}
//ポケモンクラス
class Pokemon {
    let name: String
    var trainer: Trainer?
    init(_ n: String) {
        self.name = n
    }
    deinit {
        print("ポケモンクラスのインスタンスが破棄されました")
    }
}


var satoshi: Trainer? = Trainer("satoshi")
var pikachu: Pokemon? = Pokemon("pikachu")
satoshi!.pokemon = pikachu

pikachu!.trainer = satoshi


satoshi = nil

pikachu = nil
/*
 ポケモンクラスのインスタンスが破棄されました
 トレーナクラスのインスタンスが破棄されました
 */


class Writer {
    let name: String
    var article: Article?
    init(_ n: String) {
        self.name = n
    }
    deinit {
        print("ライタークラスのインスタンスが破棄されました")
    }
}


class Article {
    let title: String
    unowned var writer: Writer
    init(title: String, writer: Writer) {
        self.title = title
        self.writer = writer
    }

    deinit {
        print("記事クラスのインスタンスが破棄されました")
    }
}


var writer: Writer? = Writer("ライター")

writer!.article = Article(title: "タイトル", writer: writer!)

writer = nil
