import Cocoa

class Rational: CustomStringConvertible {

    let numerator: Int
    let denominator: Int


    init(_ num: Int, _ denom: Int) throws {

        if denom == 0 {
            throw NSError(domain: "分母には0を代入できません。", code: -1, userInfo: nil)
        }
        self.numerator = num
        self.denominator = denom
    }

    init(n: Int, d: Int) {
        self.numerator = n
        self.denominator = d
    }

    public var description: String { return "\(numerator/gcd(abs(numerator), abs(denominator)))/\(denominator/(gcd(abs(numerator), abs(denominator))))"}

    private func gcd(_ a: Int, _ b: Int) -> Int {
        if (b == 0) {
            return a
        } else {
            return gcd(b, a%b)
        }
    }
}

func +(_ lhs: Rational, rhs: Rational) -> Rational {
    let r = Rational(n: lhs.numerator * rhs.denominator + lhs.denominator * rhs.numerator, d: lhs.denominator * rhs.denominator)
    return r
}

func +(_ lhs: Rational, _ i: Int) -> Rational {
    let r = Rational(n: lhs.numerator + i * lhs.denominator, d: lhs.denominator)
    return r
}
func +( _ i: Int, _ rhs: Rational) -> Rational {
    let r = Rational(n: rhs.numerator + i * rhs.denominator, d: rhs.denominator)
    return r
}

let half = try Rational(4, 8)

2 + half

half + 2


