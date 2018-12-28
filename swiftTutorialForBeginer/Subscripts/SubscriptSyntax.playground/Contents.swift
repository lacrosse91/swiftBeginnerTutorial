//subscript(index: Int) -> Int {
//    get {
//        // return an appropriate subscript value here
//    }
//    set(newValue) {
//        // perform a suitable setting action here
//    }
//}

//
//subscript(index: Int) -> Int {
//    // return an appropriate subscript value here
//}


struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}


let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Prints "six times three is 18"
