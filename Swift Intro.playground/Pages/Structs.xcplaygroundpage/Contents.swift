//: [Previous](@previous)

class Speed {
	var metersPerSecond: Double = 0
	init(metersPerSecond: Double) {
		self.metersPerSecond = metersPerSecond
	}
}

class Vehicle {
	let model: String
	var color: String = "Black"
	var speed: Speed = Speed(metersPerSecond: 0.0)

	init(model: String, color: String) {
		self.model = model
		self.color = color
	}

	var description: String {
		return "This is a \(color) \(model) goint at \(speed.metersPerSecond) m/s"
	}
}

class Car : Vehicle {}
class Jet : Vehicle {}

var speed = Speed(metersPerSecond: 10)
let myCar = Car(model: "BMW", color: "Black")
myCar.speed = speed

let myJet = Jet(model: "G550", color: "Green")
speed.metersPerSecond = 250
myJet.speed = speed

print(myCar.description)
print(myJet.description)


struct SpeedStruct {
	var metersPerSecond: Double = 0
	init(metersPerSecond: Double) {
		self.metersPerSecond = metersPerSecond
	}
}

var speedStruct = SpeedStruct(metersPerSecond: 10)
let anotherSpeed = speedStruct
speedStruct.metersPerSecond	= 42

speedStruct.metersPerSecond
anotherSpeed.metersPerSecond

//: [Next](@next)
