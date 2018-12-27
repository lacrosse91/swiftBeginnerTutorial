enum SomeEnumeration {
    // enumeration definition goes here
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}

//Multiple cases can appear on a single line, separated by commas:

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToHead = CompassPoint.west


directionToHead = .east

//Matching Enumeration Values with a Switch Statement

directionToHead = .south

switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
// Prints "Watch out for penguins"


var somePlanet = Planet.earth
somePlanet = .venus
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
// Prints "Mostly harmless"

somePlanet = .venus
switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

