//: [Previous](@previous)

func hello() {
	print("Hello Swift!")
}

func foo(x: Int) {
	print("int parameter")
}

func foo(x: Float) {
	print("float parameter")
}

func foo(x: String) -> Bool {
	return x.characters.count > 3
}


func multiplyNumber(number: Int, with: Int) -> Int {
	return number * with
}

multiplyNumber(4, with: 10)


func multiplyNumber(num x: Int, by y: Int) -> Int {
	return x * y
}
multiplyNumber(num: 4, by: 10)


func read(fileAtPath path: String,
	offset: Int,
	length: Int) {}
read(fileAtPath: "path", offset: 10, length: 1024)


func createFileAtPath(path: String,
	overwriteIfExists: Bool) {}
createFileAtPath("path", overwriteIfExists: false)


func getImageInfoAtPath(path: String) -> (String,Int,Int) {
	return ("png", 1920, 1080)
}

var tuple = getImageInfoAtPath("path")
print("Image \(tuple.0, tuple.1, tuple.2)")


let (_, w, h) = getImageInfoAtPath("path")
print("Image \(w, h)")


func anotherGetImageInfoAtPath(path: String) -> (type: String, width: Int, height: Int) {
	 return ("png", 1920, 1080)
}

let imageInfo = anotherGetImageInfoAtPath("path")
print("Image \(imageInfo.type, imageInfo.width, imageInfo.height)")


func greetAndCount(var name: String, inout count: Int) {
	name += ", Hello!"
	count++
}

let name = "Swift"
var count = 0
greetAndCount(name, count: &count)
print("Count \(count)")


let sayHello = {
	print("Hello")
}

let sayHi: () -> () = {
	print("Hi")
}
sayHello()
sayHi()


let adder = { (x: Int, y: Int) in
	x + y
}
adder(5, 7)


func multiplyBy2(x: Int) -> Int { return x * 2 }
let doubler = multiplyBy2

func transform(x: Int, function: (Int) -> Int) -> Int {
	return function(x)
}
transform(3, function: doubler)

transform(3, function: { (x: Int) -> Int in
	return x * 5
})
transform(3, function: { (x) -> Int in
	return x * 5
})
transform(3, function: { x -> Int in
	return x * 5
})
transform(3, function: { x in
	return x * 5
})
transform(3, function: { x in
	x * 5
})
transform(3, function: { $0 * 5 })
transform(3) { $0 * 5 }


let languages = ["Java": 4, "JavaScript": 3, "Swift": 1,
	"C++": 4, "Objective-C": 2]

languages.map({ (key, value) -> String in
	return key
}).filter({ (language) -> Bool in
	return language.characters.count > 4
}).forEach({ (language) -> () in
	print(language)
})

languages.map { key, value in
	key
}.filter { language in
	language.characters.count > 4
}.forEach { language in
	print(language)
}

languages.map{ $0.0 }
	.filter{ $0.characters.count > 4 }
	.forEach { print($0) }



func add(x: Int, y: Int) -> Int {
	return x + y
}
add(5, y: 7)

func addCurry(x: Int) -> (Int) -> Int {
	func add(y: Int) -> Int {
		return x + y
	}
	return add
}
addCurry(5)(7)

func addCurry(x: Int)(y: Int) -> Int {
	return x + y
}
addCurry(5)(y: 7)

func partial(function:(Int,Int)->Int, x:Int) -> (Int)->Int {
	func inner(y: Int) -> Int {
		return function(x, y)
	}
	return inner
}
partial(add, x: 5)(7)

//: [Next](@next)
