//: [Previous](@previous)

extension Double {
	var meters: Double { return self }
	var kilometers: Double { return self * 1_000.0 }
}

1.7.kilometers


extension Int {
	func times(closure: ()->Void) {
		for _ in 1...self {
			closure()
		}
	}
}

2.times {
	print("Hi")
}

protocol Edible {
	var calories: Int { get }
}

class Burger {
	var name: String = "Giant Cheese"
}

extension Burger : Edible {
	var calories: Int {
		return 800
	}
}

class Pizza : Edible {
	var calories: Int {
		return 1000
	}
}

extension CollectionType where Generator.Element: Equatable {

	func firstOccurenceOf(predicate: Generator.Element -> Bool) -> Index? {

		for item in self.startIndex..<self.endIndex {
			if predicate(self[item]) {
				return item
			}
		}

		return nil
	}

}

let collection = [100, 54, 123, 43, 2, 3, 900]
let index = collection.firstOccurenceOf { $0 / 2 > 50 }
print(index)


//: [Next](@next)
