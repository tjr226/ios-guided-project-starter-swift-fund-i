//: # Swift Fundamentals I
//: ## Hello, World!
//: As tradition dictates, any exploration of a new language needs to start with "hello, world"

let helloString = "Hello, world!"

// let - constant value
// var - variable value

// Swift - camel case




//: ## Comments
//: A comment is text that is ignored by the compiler. So it can be plain text, or even code. If it formatted like the examples below, it will be completely ignored when the project is built. Comments are notes to yourself or others about how a given block of code functions.

// A single line comment is one with two slashes as the first characters
/*
 * A multi-line comment
 * is one that is bounded by
 * /* and */ characters
 */

//: ## Identifiers
//: first character A-Z or a-z or _, followed by any of these plus 0-9

let myName = "Spencer"

//print(myName)




//: ## Mutability
//: There are two kinds of containers that hold values in Swift. One kind is called a constant, because once a value has been set, it cannot change for the lifetime of that container. Constants are declared with the `let` keyword.

let staff = 6
let students = 20

let iOSPT7Total = staff + students

//print(iOSPT7Total)

//: Variables are declared with the 'var' keyword

var appleCount = 10
appleCount = 15
appleCount -= 1
//print(appleCount)

//: ## Type Inference and Explicit Typing
//: All containers in Swift must have a type set on them. The containers we've seen so far had their types set implicitly. This is called _type inference_. Meaning the kind of object stored in the container was determined by looking at what kind of value was assigned to the container.

let iOS = "Apple's mobile operating system"

//: In the line above, the constant `ios` stores a value "Apple's mobile operating system". This value is a `String`, so the data type of `ios` is `String`. The type was _inferred_ by the value provided.
//: Another way to type a container is to set it explicitly. See some examples of this below.

// I need price to be a float
let price: Float = 399.99



//: ## Type Safety
//: Once a container's data type is set, it cannot hold a value of any other type

var iPhoneCount = 10

//let floatiPhoneCount = Float(iPhoneCount)

var totalPrice = price * Float(iPhoneCount)

//print(totalPrice)

//: ## Type Coercion
//: Types are never automatically converted into another type.



//: ## String Interpolation and Concatenation
//: Using the `+` operator with two strings is called _string concatentation_. One string is appended to the end of another.

let heightLabel = "The height is " + "200"
//print(heightLabel)

let width = 100
let widthLabel = "The width is \(width)"
//print(widthLabel)


//: The below example shows the _string interpolation_ characters (`\()`). These allow a `String` (or non-string) value to be placed in-line inside a larger `String` literal value. If the value is not already a `String`, it will be converted.



//: ## Collections
//: ### Arrays
//: A Swift array is a collection of like objects, and they are stored in the order they are added. Accessing a particular element is done by using its index value (which starts at 0).

let shipCaptains = ["Malcolm Reynolds", "Jean-Luc Picard", "James T. Kirk", "Han Solo", ]
// arrays can only hold one type (strings, ints, doubles, floats, etc)

//: Array equality is determined by looking at each element. If all elements are the same, and in the same order, the two arrays are equal.

//print(shipCaptains[3])
// note - this will cause iOS apps to fully crash

let differentCaptains = ["Poe Dameron", "Kathryn Janeway"]

if shipCaptains == differentCaptains {
    print("The arrays are equal")
} else {
    print("The arrays are not equal")
}

//: Since `shipCaptains` was declared as a constant, we must convert it to a mutable array before we can add entries.

var moreCaptains = shipCaptains
moreCaptains.append("Poe Dameron")
//print(moreCaptains)
moreCaptains.insert("Kathryn Janeway", at: 3)
//print(moreCaptains)
moreCaptains.remove(at: 0)

//print(moreCaptains)

//print(shipCaptains)



//: ### Dictionaries
//: A Swift dictionary is similar to an array in that is a collection, but the items are stored in no particular order. To access an item, its associated key is provided. Dictionaries are also called "key-value" stores. The key has a type, and the value can have the same or a different type.

var occupations = ["Malcolm": "Captain", "Kaylee": "Mechanic"]
var ages = ["Malcolm": 23, "Kaylee": 24]

occupations["Kaylee"] // "Mechanic"
ages["Kayle"] // 24
// dicts won't crash if you access something wrong, it will return nil

// adding to a dict
occupations["Jayne"] = "Public Relations"

//print(occupations)


//: ## Looping
//: ### `for`
//: `for` loops allow for iterating over a collection of elements (usually an array), examining each element in turn.

let scores = [30, 91, 48, 85, 92, 100, 91, 48, 85, 92, 100]
var passingStudents = 0

var aScore = 88

for score in scores {
    // score is a let constant
    if score > 70 {
        passingStudents += 1
    }
}

//print(passingStudents)


//: ### `switch`
//: `switch` statements are useful when a multiple-choice path is possible for your code, and you want to choose a single path at runtime, based on some criteria.

let diceRoll = 6

switch diceRoll {
case 1:
    print("Rolled a 1!")
case 2:
    print("Rolled a 2!")
default:
    print("Rolled something else!")
}

//: ## Functions
//: A function in Swift is nothing more than a collection of instructions that accomplish some task. The advantage to grouping the instructions into a function is that the function can then be called whenever that task should be performed, rather than having to list out those instrutions a second, third, or nth time.

func printMyName() {
    print("Tim")
}

printMyName()

func averageScores(scores: [Int]) -> Int {
    var totalScore = 0
    for score in scores {
        totalScore += score
    }
    
    let average = totalScore / scores.count
    
    return average
}

print(averageScores(scores: [1, 20, 48, 91, 100]))
print(averageScores(scores: scores))

//: ## Tuples
//: Tuples are a lightweight way of grouping related values into a single compound value.

let carrots = (name: "carrots", aisle: 4)
print(carrots.name, carrots.aisle)
