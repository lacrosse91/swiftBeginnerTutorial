/*
 For some enumerations, it’s useful to have a collection of all of that enumeration’s cases. You enable this by writing : CaseIterable after the enumeration’s name. Swift exposes a collection of all the cases as an allCases property of the enumeration type. Here’s an example:
 */

enum Beverage: CaseIterable {
    case coffee, tea, juice
}



let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
// Prints "3 beverages available"


for beverage in Beverage.allCases {
    print(beverage)
}
// coffee
// tea
// juice
