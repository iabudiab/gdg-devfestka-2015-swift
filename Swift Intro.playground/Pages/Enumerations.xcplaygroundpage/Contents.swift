//: [Previous](@previous)

enum Direction {
	case North, East, South, West

	func whereAreYouGoing() -> String {
		switch self {
		case .North: return "Going up"
		case .West: return "Going left"
		default: return "Going somewhere"
		}
	}
}

var direction = Direction.West
direction.whereAreYouGoing()

direction = .South
direction.whereAreYouGoing()


enum Currency : String {
	case Euro = "€"
	case Dollar = "$"
	case Pound = "£"
}
let currency = Currency.Pound
print(currency.rawValue)

let another = Currency(rawValue: "€")
let andAnother = Currency(rawValue: "¢")


enum Planet : Int {
	case Mercury = 1
	case Venus, Earth, Mars // 2, 3, 4
	case Jupiter = 9000
	case Saturn, Uranus, Neptune // 9001, 9002, 9003
	case Pluto = -100
}

var planet = Planet.Earth
planet.rawValue


planet = .Uranus
planet.rawValue


enum Barcode {
	case UPCA(sys: Int, id: Int, check: Int)
	case QRCode(String)
}


var code = Barcode.QRCode("Swift")
code = .UPCA(sys: 1, id: 23456_78999, check: 9)

switch code {
case let .UPCA(numberSystem, identifier, check):
	print("UPC-A: \(numberSystem), \(identifier), \(check)")

case let .QRCode(productCode):
	print("QR code: \(productCode)")
}


enum TrainStatus {
	case OnTime
	case Delayed(Int)
}

let trainStatus = TrainStatus.Delayed(20)

switch trainStatus {
case .OnTime:
	print("on time")
case .Delayed(1):
	print("1 minute")
case .Delayed(3...10):
	print("3 to 10 min")
case .Delayed(let x) where x % 2 == 0:
	print("now you're just showing off")
default:
	print("changed my mind!")
}


enum CurrentActivity {
	case Traveling(TrainStatus)
	case Eating
}

let activity = CurrentActivity.Traveling(.Delayed(15))
switch activity {
case .Traveling(.OnTime):
	print("on time")
case .Traveling(.Delayed(10...30)):
	print("delayed.")
default:
	print("Don't eat all the fries!")
}


enum Either<T1, T2> {
	case First(T1)
	case Second(T2)
}

var eitherIntOrString = Either<Int, String>.First(42)
eitherIntOrString = .Second("42")


indirect enum MathExpression {
	case Num(Int)
	case Add(MathExpression, MathExpression)
	case Mult(MathExpression, MathExpression)
}

func eval(expression: MathExpression) -> Int {
	switch expression {
	case .Num(let value): return value
	case .Add(let lhs, let rhs): return eval(lhs) + eval(rhs)
	case .Mult(let lhs, let rhs): return eval(lhs) * eval(rhs)
	}
}

let expression = MathExpression.Add(
	.Mult(
		.Num(3), .Num(4)
	),
	.Num(7)
)

eval(expression)




//: [Next](@next)
