enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

var ASCII = ASCIIControlCharacter.tab
print(ASCII.rawValue)
switch ASCII {
case .tab:
    print("たぶ")
default:
    print("たぶじゃない")
}

//Implicitly Assigned Raw Values

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var planet = Planet.venus
print(planet.rawValue)


enum CompassPoint: String {
    case north, south, east, west
}
let earthsOrder = Planet.earth.rawValue
// earthsOrder is 3


let sunsetDirection = CompassPoint.west.rawValue
// sunsetDirection is "west"


//Initializing from a Raw Value

let possiblePlanet = Planet(rawValue: 7)

let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}
// Prints "There isn't a planet at position 11"
