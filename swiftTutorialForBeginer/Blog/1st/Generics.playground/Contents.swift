import Cocoa

var str = "Hello, playground"


func myMax<T: Comparable>(_ lhs: T, _ rhs: T) -> T {
    return lhs > rhs ? lhs : rhs
}

myMax(10, 5)
//10
myMax(1.2, 3.55)
//3.55

struct MyArray<Element> {
    fileprivate var array: [Element]
    public var count: Int {
        return array.count
    }
    init(_ elements: [Element]) {
        self.array = elements
    }
}

var myArray = MyArray<Int>([0,0,1])

myArray.array

var myArray2 = MyArray(["a", "b", "c"])
myArray2.array
//["a", "b", "c"]

func mySorted<T: Collection>(_ collection: T) -> [T.Element]
    where T.Element: Comparable {
        return collection.sorted()
}

var myCollection = [2,1,4,5,3]
mySorted(myCollection)
//[1, 2, 3, 4, 5]


//var someClosure = {() -> Void in
//    var myInt = 1
//
//}()
