import Foundation

let x = 25.0
let epsilon = 0.01
var numGusses = 0
var low = 0.0
var high = max(1.0, x)
var ans = (low + high)/2.0
while fabs(ans*ans - x) >= epsilon {
    numGusses += 1
    if (ans*ans < x){
        low = ans
    } else {
        high = ans
    }
    ans = (high + low)/2.0
}

print(numGusses)
print(ans)

let income = [2,1,4,6]
income.map { $0 }

