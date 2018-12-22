func canThrowAnError() throws {
    // this function may or may not throw an error
    print("aa")
}


do {
    try canThrowAnError()
    // no error was thrown
    print("success")
} catch {
    // an error was thrown
    print("error")
}


//func makeASandwich() throws {
//    // ...
//}
//
//do {
//    try makeASandwich()
//    eatASandwich()
//} catch SandwichError.outOfCleanDishes {
//    washDishes()
//} catch SandwichError.missingIngredients(let ingredients) {
//    buyGroceries(ingredients)
//}
//

