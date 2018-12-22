///////Assignment Operator ////

let b = 10
var a = 5
a = b
// a is now equal to 10

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

//if x = y {
//    // This is not valid, because x = y does not return a value.
//}

if x == y {
    // This is OK
}
////////////////////////////////


////////Arithmetic Operators/////////
1 + 2       // equals 3
5 - 3       // equals 2
2 * 3       // equals 6
10.0 / 2.5  // equals 4.0
"hello, " + "world"  // equals "hello, world"

//Remainder Operator
9 % 4    // equals 1
-9 % 4   // equals -1

//The sign of b is ignored for negative values of b. This means that a % b and a % -b always give the same answer.


//Unary Minus Operator
let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"
//Unary Plus Operator
let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
/////////////////////////////////////


///////////Compound Assignment Operators////
var aa = 1
aa += 2
// a is now equal to 3
///////////////////////////////////////////

//////////Comparison Operators//////////
1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 is not equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 is not less than or equal to 1


let name = "world"
if name == "world" {
    print("hello, world")
} else {
    print("I'm sorry \(name), but I don't recognize you")
}
// Prints "hello, world", because name is indeed equal to "world".



(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"


("blue", 2) < ("purple", 1)        // OK, evaluates to true
//("blue", false) < ("purple", true)  // Error because < can't compare
////////////////////////////////////////

/////////////Ternary Conditional Operator/////////
let contentHeight = 40
let hasHeader = true
var rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90

if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}
// rowHeight is equal to 90
//////////////////////////////////////////////////

////////////Nil-Coalescing Operator/////////////
let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red"


userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to "green"
////////////////////////////////////////////////


////////Range Operators///////////////////////
//Closed Range Operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//Half-Open Range Operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
// Person 1 is called Anna
// Person 2 is called Alex
// Person 3 is called Brian
// Person 4 is called Jack

//one-sided Ranges
for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

for name in names[..<2] {
    print(name)
}
// Anna
// Alex

let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1)  // true

/////////////////////////////////////////////


//////Logical Operators///////////////////////
//Logical NOT Operator
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//Logical AND Operator

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "ACCESS DENIED"

//Logical OR Operato
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"


if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"
/*
This example uses multiple && and || operators to create a longer compound expression. However, the && and || operators still operate on only two values, so this is actually three smaller expressions chained together. The example can be read as:

If we’ve entered the correct door code and passed the retina scan, or if we have a valid door key, or if we know the emergency override password, then allow access.

Based on the values of enteredDoorCode, passedRetinaScan, and hasDoorKey, the first two subexpressions are false. However, the emergency override password is known, so the overall compound expression still evaluates to true.
*/


if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
// Prints "Welcome!"

/////////////////////////////////////////////
