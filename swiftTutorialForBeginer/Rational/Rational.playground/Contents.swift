import Cocoa

var str = "Hello, playground"

class Rational {
    let numerator: Int
    let denominator: Int
    init(_ num: Int, _ denom: Int) {
        self.numerator = num
        self.denominator = denom
    }
}

var half = Rational(1, 2)

half.denominator
