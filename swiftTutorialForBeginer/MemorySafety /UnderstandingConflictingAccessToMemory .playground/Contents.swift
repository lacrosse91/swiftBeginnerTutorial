// A write access to the memory where one is stored.
var one = 1

// A read access from the memory where one is stored.
print("We're number \(one)!")

//Characteristics of Memory Access
/*
 At least one is a write access.
 They access the same location in memory.
 Their durations overlap.
 */
func oneMore(than number: Int) -> Int {
    return number + 1
}


var myNumber = 1
myNumber = oneMore(than: myNumber)
print(myNumber)
// Prints "2"

//Conflicting Access to In-Out Parameters

var stepSize = 1

func increment(_ number: inout Int) {
    number += stepSize
}

//increment(&stepSize)
// Error: conflicting accesses to stepSize

// Make an explicit copy.
var copyOfStepSize = stepSize
increment(&copyOfStepSize)

// Update the original.
stepSize = copyOfStepSize
// stepSize is now 2

func balance(_ x: inout Int, _ y: inout Int) {
    let sum = x + y
    x = sum / 2
    y = sum - x
}
var playerOneScore = 42
var playerTwoScore = 30
balance(&playerOneScore, &playerTwoScore)  // OK
//balance(&playerOneScore, &playerOneScore)
// Error: conflicting accesses to playerOneScore
