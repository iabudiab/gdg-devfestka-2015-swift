//: [Previous](@previous)

var languages = [
	"Swift": 1,
	"Java": 2,
	"Objective-C": 3,
	"C++": 4,
	"JS": 5
]

var possible: Int? = languages["Go"]

if possible != nil {
	print("Go is \(possible!)")
} else {
	print("It's a no Go")
}

possible = languages["Swift"]

if let actualValue = possible {
	print("Swift is \(actualValue)")
} else {
	print("It's a no Go")
}


var movies: [String]? = ["Rambo", "Matrix", "Snatch"]

if let count = movies?.count {
	print("I have \(count) movies")
} else {
	print("Movies collection is undefined")
}


var x = Int("1000")
let y = Int("337")
let z = Int("11")
if let a = x {
	if let b = y {
		if let c = z {
			if c != 0 {
				print("(x + y) / z = \((a + b) / c)")
			}
		}
	}
}

if let a = x, b = y, c = z where c != 0
{
	print("(x + y) / z = \((a + b) / c)")
}

//: [Next](@next)

