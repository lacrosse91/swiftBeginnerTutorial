enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}



/*
 You can also write indirect before the beginning of the enumeration to enable indirection for all of the enumeration’s cases that have an associated value:
 */
//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))


func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        print("a")
        return value
    case let .addition(left, right):
        print("b")
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        print("c")
        return evaluate(left) * evaluate(right)
    }
}
print(evaluate(product))
// Prints "18"

