//String Indices

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
//let index = greeting.index(greeting.startIndex, offsetBy: 7)
//greeting[index]
// a

//greeting[greeting.endIndex] // Error
//greeting.index(after: greeting.endIndex) // Error

for index in greeting.indices {
//    print(index)
    print("\(greeting[index]) ", terminator: "")
}

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome now equals "hello!"

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome now equals "hello there"

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
// welcome now equals "hello"


let sample = "こんにちは"

sample[greeting.startIndex]
//こ
//sample[0]
////エラー

sample[sample.index(before: sample.endIndex)]
//は

//greeting[greeting.index(before: greeting.endIndex)]

let index = sample.index(sample.startIndex, offsetBy: 2)

sample[index]
//に
for index in sample.indices {
    print(sample[index])
}


