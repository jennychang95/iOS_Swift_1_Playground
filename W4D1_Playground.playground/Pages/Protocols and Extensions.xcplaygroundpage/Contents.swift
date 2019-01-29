//: [Previous](@previous)
/*:
 ## Protocols
 Protocols are a defined contract or blueprint that a class, struct or enum must follow.
 */
/*:
 Here we define a 'ShapeProtocol' where anything that conforms to it must provide a property of number of sides and a function called 'shapeDescription'
 */
protocol ShapeProtocol {
    
    var numberOfSides: Int { get set }
    func shapeDescription()
    var area: Double { get set }
    var colour : String { get set }
    
    init(colour: String, numberOfSides: Int, area: Double)
}
/*:
 This 'Square' class conforms to the 'ShapeProtocol' and defines the number of sides for this shape and it has the shapeDescription method inside.
 */
class Square: ShapeProtocol {
    
    required init(colour: String, numberOfSides: Int, area: Double) {
        self.colour = colour
        self.numberOfSides = 4
        self.area = 16
    }
    
    var colour: String
    var area: Double
    var numberOfSides: Int
    
    func shapeDescription() {
        
        print("This is a square")
    }
}
/*:
 - Experiment:
 Add a new function in our 'ShapeProtocol' that should calculate the area of its shape. Make sure you implement it in our 'Square' class as well.
 */
// 👻
/*:
 - Experiment:
 Add a new property in our 'ShapeProtocol' of type String that indicates the colour of this shape.
 */
// 👻
/*:
 - Experiment:
 We can also declare a custom initializer within our 'ShapeProtocol' that any class must have present. Create an initializer that takes in a colour as a parameter.
 */
// 🔵🌕🍏
/*:
 - Callout(Challenge):
 Define a person protocol with name, gender, age and add a custom initializer to set all the properties and a function to print a description of this person. Create a 'Student' class that conforms to this protocol and print the description of this student using its name.
 */
protocol PersonProtocol {
    var name : String { get set }
    var gender : String { get set }
    var age : Int { get set }
    func description()
    
    init(name: String, gender: String, age: Int)
}

class Student : PersonProtocol {
    
    required init(name: String, gender: String, age: Int) {
        self.name = name
        self.gender = gender
        self.age = age
    }
    
    var name: String
    var gender: String
    var age: Int
    func description() {
        "hi I'm a student"
    }
}
/*:
 ## Extensions
 Extensions are a way to add additional functions to an existing class, struct or enum.
 \
 For example, I can extend the `'Double'` class to add a function I may use very often such as squaring a number. ie: 4*4 = 16
 
 - Note:
 Extensions are like categories from Objective-C. Unlike Objective-C categories, Swift extensions do not have names.
 */

// This is declaring an extension on the Double class
extension Double {
    
    // This 'square' function takes its own value and multiples it by itself, then returns the new value
    func square() -> Double {
        
        return self * self
    }
}

var myDoubleValue = 5.0
var mySquaredDoubleValue = myDoubleValue.square()

/*:
 - Experiment:
 Try adding the 'square' function to the `Float` type
 */
extension Float {
    func square() -> Float {
        return self * self
    }
}

var myFloatValue = 5.7894
var myFloatValueSquared = myFloatValue.square()
/*:
 We are going to add a few extensions to several classes that you could potentially use for your future projects to make things more convenient.
 */
/*:
 - Callout(Challenge):
 Create an extension on UIColor that converts hex represented colours to a UIColor to use. ex: #FFFFFF would give a UIColor of white (Hint: You can google the algorithm on how to convert hex values to a UIColor)
 */

/*:
 - Callout(Challenge):
 Create an extension on `String` called 'trim'. This will return a `String` that has the whitespace trimmed from the beginning and end. For example: "    hello there  " will return "hellothere"
 */

/*:
 - Callout(Challenge):
 Create an extension on String that checks if an email address has a valid format. You can make the rules as strict or as loose as you'd like. Rules can include verifying there are no spaces, there is a '@' present, etc.
 */

/*:
 - Callout(Challenge):
 Create an extension on `Double` to add a function that converts the number of seconds into minutes and another function to hours. ex: Given 900 seconds, the minutes returned will be 15 minutes, and the hours returned would be 0.25 hours.
 */

//: [Next](@next)
