class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}


let counter = Counter()
// the initial counter value is 0
counter.increment()
// the counter's value is now 1
counter.increment(by: 5)
// the counter's value is now 6
counter.reset()
// the counter's value is now 0


//The self Property

/*
 Every instance of a type has an implicit property called self, which is exactly equivalent to the instance itself. You use the self property to refer to the current instance within its own instance methods.
 func increment() {
 self.count += 1
 }
 */

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0) {
    print("This point is to the right of the line where x == 1.0")
}
// Prints "This point is to the right of the line where x == 1.0"

//Modifying Value Types from Within Instance Methods

struct MovePoint {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}

var someMovePoint = MovePoint(x: 1.0, y: 1.0)
someMovePoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(someMovePoint.x), \(someMovePoint.y))")
// Prints "The point is now at (3.0, 4.0)"

/*
 Note that you cannot call a mutating method on a constant of structure type, because its properties cannot be changed, even if they are variable properties
 */

//let fixedPoint = MovePoint(x: 3.0, y: 3.0)
//MovePoint.moveBy(x: 2.0, y: 3.0)
//// this will report an error


//Assigning to self Within a Mutating Method

struct AssigningPoint {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = AssigningPoint(x: x + deltaX, y: y + deltaY)
    }
}

var someAssigningPoint = AssigningPoint(x: 1.0, y: 1.0)
someAssigningPoint.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(someAssigningPoint.x), \(someAssigningPoint.y))")


enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
// ovenLight is now equal to .high
ovenLight.next()
// ovenLight is now equal to .off
