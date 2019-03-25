import Cocoa

var str = "Hello, playground"

class Rational {
    let numerator: Int
    let denominator: Int
    init?(_ num: Int, _ denom: Int) {

        guard denom != 0 else { return nil }
        func gcd(_ a: Int, _ b: Int) -> Int {
            if (b == 0) {
                return a
            } else {
                return gcd(b, a%b)
            }
        }

        let g = gcd(abs(num), abs(denom))

        self.numerator = num/g
        self.denominator = denom/g
    }
    func toString() -> String {
        return "\(numerator)/\(denominator)"
    }


}

var half = Rational(1, 2)

half?.denominator

half?.toString()

var zero = Rational(3,0)

var a = Rational(2, 3)
var b = Rational(16, 24)
b!.toString()


