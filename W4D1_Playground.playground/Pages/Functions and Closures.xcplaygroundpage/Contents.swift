//: [Previous](@previous)
/*:
 ## Functions

 A function is a set of statements grouped together to perform a task. Functions can take in zero or many parameters and the function can also return a value or return nothing. Below you can see the different structures of a function of how you can write them.
 */
/*:
 - Callout(Structure): This function structure does not include any parameters and does not return anything
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses
 - Open and close braces
*/
func sayHello(){
    print("Hello")
}
/*:
 - Callout(Structure): This function takes in a single parameter and does not return any values
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - **Open and close parentheses with a parameter called 'toPerson' of type `String`**
 - Open and close braces
 */
func sayHello(toPerson: String){
    print("Hello \(toPerson)")
}
/*:
 - Callout(Structure): This function takes in a single parameter and returns a value of type `String`
 
 - Declare the `func` keyword
 - The name of the function `'sayHello'`
 - Open and close parentheses with a parameter called 'toPerson' of type `String`
 - A return value of type `String` represented by the `->`
 - Open and close braces
 */
func sayHello(toPerson: String) -> String{
    return "Hello \(toPerson)"
}
/*:
 - Experiment:
 Try calling all of the functions above. They all have the same function name, but the compiler doesn't complain. Can you think of why this might be?
 */
sayHello() // this returns nothing
//sayHello(toPerson: "Jenny") takes in string and returns nothing
//sayHello(toPerson: "Jenny")  takes in string and returns a string
/*:
 - Experiment:
 Try creating your own function that accepts two parameters of any type you choose. Have the function print out the two parameters and test your function.
 */

func iWouldLikeABeer(type: String, quantity: String) {
    print("Hi Danny, do I deserve a \(quantity) of \(type) right now? I managed to complete a function")
}

iWouldLikeABeer(type: "lager", quantity: "pint")
/*:
 - Callout(Challenge):
 Create four separate functions to add, subtract, multiple, and divide with two parameters given to it and returns a number result. Try testing each one afterwards.
 
 */
func add(first: Float, second: Float) -> Float {
    return first + second
}

func subtract(first: Float, second: Float) -> Float {
    return first - second
}

func divide(first: Float, second: Float) -> Float {
    return first / second
}

func multipy(first: Float, second: Float) -> Float {
    return first * second
}

add(first: 2, second: 4)
subtract(first: 40, second: 2)
divide(first: 40, second: 7)
multipy(first: 4, second: 5.6)
/*:
 - Callout(Challenge):
 Create your own 'reverse' function that takes in an array of Int, reverses the order of the array, and returns the newly reversed array of Int. The array class has its own 'reverse' method, but do not use it for this challenge.
 */
func reverse(array:[Int]) -> [Int] {
    var reverse:[Int] = []
    
    for i in 0..<array.count {
        reverse.append(array[array.count-1-i])
    }
        return reverse
}

let moreNumbers = [5,10,15,20,50]
reverse(array: moreNumbers)

/*
 
 Closures are also a set of statements grouped together but the closure can be stored and passed around and executed somewhere else.
 
 - Note:
 A closure in Swift is similar to blocks in Objective-C
 */
/*:
 For example, the UIViewController has a 'dismiss' method.
 
 `func dismiss(animated flag: Bool, completion: (() -> Void)? = nil)`
 
 The 'completion' part of it is the completion handler which is a closure. It will execute that block of code when the dismiss action has completed.
 */
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosure'.
 
 - Start with the open braces
 - The first '()' indicates it takes no parameters
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosure = { () -> () in
    print("Hello from closure")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureToPerson'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The second '()' indicates it does not return any value
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureToPerson = { (name: String) -> () in
    print("Hello \(name)")
}
/*:
 - Callout(Structure): This is storing a closure into a variable called 'sayHelloClosureWithReturn'.
 
 - Start with the open braces
 - The first '()' indicates it takes one parameter 'name'
 - The -> represents what a type it will return
 - The `'String'` after the arrow indicates it returns a `String` type
 - The 'in' keyword separates the type declaration from the body
 - Close braces
 */
var sayHelloClosureWithReturn = { (name: String) -> String in
    return "Hello \(name)"
}
/*:
 - Experiment:
 Try calling all of the closures above. What do you notice that is different from calling a function?
 */
sayHelloClosure() // we need to call for it to happen
sayHelloClosureToPerson("Jenny")
sayHelloClosureWithReturn("Jenny")

/*:
 - Experiment:
 Try creating your own closure that accepts two parameters of any type you choose. Have the closure print out the two parameters and test your closure.
 */
var imNotFeelingCreativeRightNow = { (city: String, weather: String) -> () in
    print("in \(city) there is a lot of \(weather)")
}

imNotFeelingCreativeRightNow("Vancouver","rain")
/*:
 - Experiment:
 Declare a variable with an explicit closure type: `(String) -> (String)`. This closure type says it takes one parameter of type String and returns a variable of type String.
 */
var explicitClosureMethod = { (city: String) -> String in
    return "in \(city) there are mountains"
}

explicitClosureMethod("Vancouver")
/*:
 - Callout(Challenge):
 Create a closure with at least two parameters of your choice and decide whether or not it returns anything. Then create a function that takes in your closure as a parameter and one additional parameter of your choice.
 */
import Foundation

var velocity = { (horizontal: Float, vertical: Float) -> Float in

    return (pow(horizontal,2) + pow(vertical,2)).squareRoot()
}
//velocity(12,5)

func calcKineticEnergy(velocity: (Float,Float) -> Float, metre:Float) -> Float {
    
    return Float(0.5) * pow(velocity(5,8),2) * metre
}
calcKineticEnergy(velocity: velocity, metre: 7.8)

// we can pass the idea of a closure
