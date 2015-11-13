//: [Previous](@previous)

var ints = Array<Int>()
ints = [Int]()
var doubles: [Double] = [3.14, 42, 100]

doubles.filter { num in
	num > 10
}

doubles.reduce(1) { x, y in
	x + y
}


var animals = ["🐼", "🐢"]
animals.append("🐰")
animals += ["🐥", "🐍"]
animals.indexOf("🐢")

animals.map { animal in
	"look it's a \(animal)"
}


var languages = Dictionary<String, Int>()
languages = [String:Int]()
languages["Swift"] = 1
languages["Java"] = 2
languages["Objective-C"] = 3
languages["C++"] = 4
languages["JS"] = 5

languages.filter { lang, rank in
	rank < 3
}.forEach { lang, rank in
	print(lang)
}

//: [Next](@next)
