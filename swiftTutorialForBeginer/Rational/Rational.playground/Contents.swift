import Cocoa

var str = "Hello, playground"

class Rational {
    let numerator: Int
    let denominator: Int
    init?(_ num: Int, _ denom: Int) {

        guard denom != 0 else { return nil }

        self.numerator = num
        self.denominator = denom
    }
    func toString() -> String {
        return "\(numerator)/\(denominator)"
    }

    private func gcd(a: Int, b: Int) -> Int {
        return 0
    }
}

var half = Rational(1, 2)

half!.denominator

half!.toString()

var zero = Rational(3,0)

