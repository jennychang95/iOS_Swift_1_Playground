//: [Previous](@previous)
/*:
 ## Array and Dictionaries
 
  Arrays and dictionaries allow us to store a collection of data. Create arrays and dictionaries using brackets '[]'. Remember that arrays hold a collection data based on an index, so we can access a value by writing the desired index within the brackets. Arrays also begin at index `0`. Dictionaries hold a key and a value, and we can access a value by writing the desired key within the brackets.
 */

// We can declare an array with square brackets syntax
var myNumberArray = [1,2,3]
print("The value at index 1 is: \(myNumberArray[1])")

// We can declare a dictionary with square brackets and key/value data
var myDictionary = ["Students" : 5, "Teachers" : 2]

// This is how we add a new key/value to our dictionary
myDictionary["Principal"] = 1

/*:
 - Experiment:
 Try creating an array and dictionary using `'let'` vs `'var'` then try adding something to them. What do you notice? For the array, you can use a method called 'append' to add something to it.
 */
// let is an immutable array
// var is a mutable array

var shoppingList = ["butter","hummus","feta"]
shoppingList.append("olives")

/*:
 - Experiment:
 Try creating an empty array with an explicit type `[type]`. What happens when you add a value that isn't the same type?
 */
var metals:[String] = ["copper","aluminium","steel"]

// obviously we cannot add an integer to it, if we wanted to pass in other types, we would need to specify "Any" as opposed to string

/*:
 - Experiment:
 Try creating an empty dictionary with an explicit type. `[keyType: valueType]`
 */
var capitalCities = ["United Kingdom":"London","France":"Paris","Germany":"Berlin"]
capitalCities["United Kingdom"]

/*:
 - Experiment:
 Create an array with any values of your choice. Play around with accessing a value at a certain index. Then try playing with the following methods of an array and find out what they do:
 - append
 - insert
 - removeAt
 - removeAll
 - reverse
 - count
 */
var blackMirror = ["San Junipero","USS Callister","The National Anthem","Nosedive"]
blackMirror.append("Hated in the Nation")
blackMirror.insert("Be Right Back", at: 2)
blackMirror.remove(at: 2) // this shows the one that's removed
blackMirror.reverse() // reverses the order
blackMirror.count
blackMirror.removeAll()
/*:
 - Experiment:
 Create a dictionary with any values of your choice. Play around with accessing a value by its key. Try keys using different case sensitivity, what happens? Then try playing with the following methods of a dictionary and find out what they do:
 - removeValue
 - isEmpty
 - count
 */
var continents = ["UK":"Europe","Canada":"North America","Lebanon":"Middle East","South Sudan":"Africa","Myanmar":"Asia"]
continents.removeValue(forKey: "Canada")
continents // shows that Canada has been removed"
continents.isEmpty // my dictionary is not empty
continents.count
/*:
 - Callout(Challenge):
    Declare a mutable array that is empty and holds `Strings`. On the next few lines, add the following names to the array: John, Karen, Jane
 
    Finally, print out each person's name from the array using their index and string interpolation
*/
var genericNames:[String] = ["Helen","Jenny","Phillip","George"]
genericNames.append(contentsOf: ["John","Karen","Jane"])

print("Here are the names in my array: \(genericNames[0]), \(genericNames[1]), \(genericNames[2]), \(genericNames[3]), \(genericNames[4]), \(genericNames[5]), \(genericNames[6])")
/*:
 - Callout(Challenge):
  Declare a mutable dictionary with the following names and their salaries
 
    John - $50000
 
    Jane - $70000
 
    Karen - $62000
 
    On the next line, add this last person's info: Bob - $45000
 */
var salaries = ["John":50000, "Jane":70000, "Karen":62000]
salaries["Bob"] = 45000
salaries
//: [Next](@next)
