//: [Previous](@previous)

protocol SomeProtocol {
	static func typeMethod() -> Bool
	static var typeProperty: Float { get set }

	func instanceMethod(x: Int) -> String
	var instanceProperty: Double { get }

	init(name: String)
}

class SomeType: SomeProtocol {

	static func typeMethod() -> Bool {
		return true
	}

	static var typeProperty: Float {
		get { return 1.2 }
		set { self.typeProperty = newValue }
	}

	func instanceMethod(x: Int) -> String {
		return "\(x)"
	}

	var instanceProperty: Double {
		return 3.14
	}

	required init(name: String) {
		print("Hello \(name)")
	}
}

let bob = SomeType(name: "Bob")


protocol Comparable {
	func compare(lhs: Self, rhs: Self) -> Int
}


struct Speed : Comparable {
	var metersPerSecond: Double = 0
	init(metersPerSecond: Double) {
		self.metersPerSecond = metersPerSecond
	}

	func compare(lhs: Speed, rhs: Speed) -> Int {
		if lhs.metersPerSecond < rhs.metersPerSecond {
			return -1
		} else if lhs.metersPerSecond > rhs.metersPerSecond {
			return 1
		} else {
			return 0
		}
	}
}



//: [Next](@next)
