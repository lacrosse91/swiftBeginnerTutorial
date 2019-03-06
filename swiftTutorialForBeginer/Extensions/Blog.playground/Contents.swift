extension Double {
    var km: Double { return self * 1_000.0 }
}

var a: Double = 1.0

print(a.km)

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}

let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
                          size: Size(width: 5.0, height: 5.0))
memberwiseRect.origin.x

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
                      size: Size(width: 3.0, height: 3.0))
// centerRect's origin is (2.5, 2.5) and its size is (3.0, 3.0)


struct Sample {
    var x: Int = 0
    init(x: Int) {
        self.x = x
    }
}

extension Sample {
    init(extentionX: Int) {
        self.x = 10*extentionX
    }
}

var b = Sample(x: 5)

var c = Sample(extentionX: 5)

print(b.x)
print(c.x)

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions {
    print("swift")
}
// swift
// swift
// swift

extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()

print(someInt)//9


var swift = "swift"


extension String {
    subscript(i: Int) -> Character {
        let index = self.index(self.startIndex, offsetBy: i)
        return self[index]
    }
}

swift[0]//s
swift[2]//i



//String Indices

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]
// a
