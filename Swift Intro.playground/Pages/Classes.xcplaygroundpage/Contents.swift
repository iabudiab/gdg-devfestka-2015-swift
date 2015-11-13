//: [Previous](@previous)

class AirConditioner {
	func turnOn() {
		print("It is cool now!")
	}
}

class Vehicle {
	let model: String
	var color: String = "Black"

	lazy var airConditioning = AirConditioner()

	init(model: String, color: String) {
		self.model = model
		self.color = color
	}

	deinit {
		print("Destroying vehicle")
	}

	var description: String {
		return "This is a \(color) \(model)"
	}

	func makeItCool() {
		airConditioning.turnOn()
	}
}

let someVehicle = Vehicle(model: "VW", color: "Red")
someVehicle.description

someVehicle.makeItCool()


class Car: Vehicle {

	var speed: Double {
		willSet {
			if newValue > 300 {
				print("Are you nuts!?")
			}
		}
		didSet {
			print("Was \(oldValue), now \(speed)")
		}
	}

	init(model: String) {
		speed = 0.0
		super.init(model: model, color: "Blue")
	}
}

let someCar = Car(model: "BMW")
someCar.description

someCar.speed = 350
someCar.speed = 120


class GameBoard {
	var array: [Int] = Array(count: 4, repeatedValue: 0)

	subscript(x:Int, y:Int) -> Int {
		get { return array[(x * y) + y] }
		set { array[(x * y) + y] = newValue }
	}
}

var board = GameBoard()
board[1, 2] = 3
board.array


class Speed {
	var metersPerSecond: Double = 0
	init(metersPerSecond: Double) {
		self.metersPerSecond = metersPerSecond
	}
}

func + (left: Speed, right: Speed) -> Speed {
	return Speed(metersPerSecond:left.metersPerSecond + right.metersPerSecond)
}

func += (inout left: Speed, right: Speed) {
	left = left + right
}

var speed = Speed(metersPerSecond: 2)
speed += Speed(metersPerSecond: 5)
let rocket = speed + Speed(metersPerSecond: 9000)

prefix operator <<~~ {}

prefix func <<~~ (inout speed: Speed) {
	speed.metersPerSecond = 299_792_458
}

<<~~speed


//: [Next](@next)
