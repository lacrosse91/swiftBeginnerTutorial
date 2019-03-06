import Cocoa

var str = "Hello, playground"

let epsilon: Double = 0.001
let k: Double = 24.0

var guess: Double = k/2
while sqrt(guess*guess - k) >= epsilon {

    guess = guess - (((guess*guess) - k)/(2*guess))
}
print(guess)
