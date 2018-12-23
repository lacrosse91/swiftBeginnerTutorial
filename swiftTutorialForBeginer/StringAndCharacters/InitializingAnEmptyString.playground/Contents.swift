var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other


if emptyString.isEmpty {
    print("Nothing to see here")
}
// Prints "Nothing to see here"

//String Mutability

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += " and another Highlander" //error
// this reports a compile-time error - a constant string cannot be modified
