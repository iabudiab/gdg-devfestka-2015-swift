//: [Previous](@previous)

var empty = ""; var another = String()
var hello = "Hello "
let greeting = hello + "Swift"

let earth = "This is planet 🌍"
// earth += "It also has a moon!" // Compile error ~> constant

let wildcard: Character = "*"
let cthulhu: [Character] = ["C","t","h","u","l","h","u","🐙"]

// Å: ANGSTROM SIGN U+212B
let angstrom1 = "\u{212b}"
// Å: LATIN CAPITAL LETTER A WITH RING ABOVE U+00C5
let angstrom2 = "\u{c5}"
// A +  ̊: A + COMBINING RING ABOVE U+030A
let angstrom3 = "A\u{30a}"

angstrom1 == angstrom2
angstrom2 == angstrom3
angstrom1.characters.count
angstrom2.characters.count
angstrom3.characters.count


// é: U+00E9 LATIN SMALL LETTER E WITH ACUTE
let first = "caf\u{e9}"
var second = "cafe"

first.characters.count
second.characters.count

//  ́: U+030A COMBINING ACUTE ACCENT
second += "\u{301}"
second.characters.count

first == second


// A: LATIN CAPITAL LETTER A
let latinCapitalLeterA: Character = "\u{41}"

// А: CYRILLIC CAPITAL LETTER A
let cyrillicCapitalLetterA: Character = "\u{410}"

latinCapitalLeterA == cyrillicCapitalLetterA


// U+1F1E9, U+1F1EA  REGIONAL INDICATOR SYMBOL LETTER D, E
let germany = "\u{1F1E9}\u{1F1EA}"
let flag = "🇩🇪"
germany.characters.count
flag.characters.count
germany == flag

let character: Character = "🇩🇪🇯🇵🇷🇺🇧🇪🇧🇷"
let string: String = "🇩🇪🇯🇵🇷🇺🇧🇪🇧🇷"
string.characters.count


"ampère" < "ångström"
"ångström" < "bacon"


//: [Next](@next)
