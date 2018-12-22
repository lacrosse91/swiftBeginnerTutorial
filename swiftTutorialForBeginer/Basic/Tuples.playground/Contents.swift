let http404Error = (404, "Not Found!!!")

// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error//If you only need some of the tuple’s values, ignore parts of the tuple with an underscore (_) when you decompose the tuple
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"


print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"


//If you name the elements in a tuple, you can use the element names to access the values of those elements:

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"

