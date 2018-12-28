class DataImporter {
    /*
     DataImporter is a class to import data from an external file.
     The class is assumed to take a nontrivial amount of time to initialize.
     */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
    // the DataManager class would provide data management functionality here
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property has not yet been created


print(manager.importer.filename)
// the DataImporter instance for the importer property has now been created
// Prints "data.txt"


//another example

//no lazy
var defaultPrice = 100

class Item {
    var price: Int = defaultPrice
}

let item = Item()

defaultPrice = 200
print(item.price) // 100

// lazy
defaultPrice = 100

class LazyItem {
    lazy var price: Int = defaultPrice
}

let lazyItem = LazyItem()

defaultPrice = 200
print(lazyItem.price) // 200

defaultPrice = 300
print(lazyItem.price) // 200
