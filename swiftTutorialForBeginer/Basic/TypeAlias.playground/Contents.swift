typealias AudioSample = UInt16


var maxAmplitudeFound = AudioSample.min

print("maxAmplitudeFound is \(maxAmplitudeFound)")// maxAmplitudeFound is  0

typealias newString = String

let aa: newString = "swift"

var bb = "c"

print(type(of: bb)) //String

print(type(of: aa)) //newString


typealias myInt = Int

let sampleInt: myInt = 0

print(sampleInt)
print(type(of: sampleInt))


