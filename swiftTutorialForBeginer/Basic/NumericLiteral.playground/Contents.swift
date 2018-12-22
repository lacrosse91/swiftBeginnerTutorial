let decimalInteger = 17


let binaryInteger = 0b10001       // 17 in binary notation

let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

print(0b01 + binaryInteger) //can

print(0b011 + octalInteger) //can
print(10 + binaryInteger) //can

let a = 0b01 + binaryInteger

let exp = 1.25e2//125

let exp1 = 0xFp2// 15*2^2

let hexadecimalDouble = 0xC.3p0 // 12.1875

// easy to read
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

print(oneMillion)

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one) //can
//let twoThousandAndOne = twoThousand + one //can't

//let cannotBeNegative: UInt8 = -1
// UInt8 cannot store negative numbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1
// Int8 cannot store a number larger than its maximum value,
// and so this will also report an error

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let integerPi = Int(pi)//3

