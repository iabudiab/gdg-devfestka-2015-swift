//: [Previous](@previous)

let x = 7

if x > 10 {
	print("x > 10")
} else if x < 5 {
	print("x < 5")
} else {
	print("x in [5, 10]")
}

var counter = 3
while counter > 0 {
	print("Counter: \(counter)")
	counter--
}

repeat {
	print("Counter: \(counter)")
	counter++
} while counter < 3


for var index = 0; index < 3; ++index {
	print("index \(index)")
}

for index in 1...3 {
	print("index in closed range: \(index)")
}

for index in 1..<3 {
	print("index in open range: \(index)")
}

for _ in 1...3 {
	print("Hello from ignored index")
}


let animals = ["🐼", "🐢", "🐍"]
for animal in animals {
	print("It's a \(animal)")
}


let numberOfLegs = ["spider": 8, "ant": 6, "tiger": 4]
for (animal, legCount) in numberOfLegs {
	print("The \(animal) has \(legCount) legs")
}


let grade = 77
switch grade {
case 0..<20: fallthrough
case 20..<50: print("fail")
case 50..<100: print("not bad")
case 100: print("nice")
default: print("no such grade")
}


let point = (2, 5)
switch point {
case (0, 0): print("the origin")
case (_, 0): print("\(point.0), 0")
case (-1...2, -2...7): print("\(point.0, point.1)")
case (let x, 0): print("x is \(x)")
case let (x, y): print("\(x), \(y)")
}


let anotherPoint = (5, 9)
switch anotherPoint {
case let (x, y) where x == y: print("x == y")
case let (x, y) where x == y - 4: print("x == y - 4")
case let (x, y): print("arbitrary")
}


let coolStuff = ["Swift", "Objective-C", "C", "C++"]
let language = "Swift"
switch language {
case "Java", "C++":
	print("...")
case let lang where lang.hasPrefix("Ja"):
	print("Starts with Ja")
case let lang where coolStuff.contains(lang):
	print("Something cool")
default:
	print("...")
}


for case let lang in coolStuff where lang.hasPrefix("C") {
	print(lang)
}

var tuple = (x: 3, y: 5)
while case let (x, y) = tuple where x < y {
	print("x < y")
	tuple.x++
}

//: [Next](@next)
