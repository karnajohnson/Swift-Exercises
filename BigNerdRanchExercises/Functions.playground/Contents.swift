//: Playground - noun: a place where people can play

import UIKit

//Chapter 12 - Functions
//A Basic Funtion
/*func printGreeting(){
    print("Hello, Playground")
}
printGreeting()

//Function Parameters
func printPersonalGreeting(name: String){
    print("Hello \(name), welcome to your playground.")
}

printPersonalGreeting(name: "Karna")
//A Function For Division
func divisionDescriptionFor(numerator: Double, denominator: Double){
    print ("\(numerator) divided by \(denominator) equals \(numerator / denominator).")
}

divisionDescriptionFor(numerator: 12.0, denominator: 3.0)
//Explicit parameter names
func printPersonalGreeting(to name: String){ //adding to to the parameter name makes it accessible outside the function
    print("Hello \(name), welcome to your playground.")
}

printPersonalGreeting(to: "Anna")
//Variadic parameters
func printPersonalGreetings(to names: String...){ //The ... ist he variadic parameter
    for name in names{
        print("Hello \(name), welcome to the playground.")
    }
}

printPersonalGreetings(to: "Karna", "Anna", "Gunilla", "Zoe")
//Default parameter values
func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = "."){ // This string is the default
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)")
}

divisionDescriptionFor(numerator: 12.0, denominator: 3.0)
divisionDescriptionFor(numerator: 12.0, denominator: 3.0, withPunctuation: "!")

//In-out parameters
var error = "The request failed:"

func appendErrorCode(_ code: Int, toErrorString errorString: inout String){ //Here is the inout parameter
    if code == 400{
        errorString += " bad request."
    }
}

appendErrorCode(400, toErrorString: &error)
error

//Returning from a Function
func divisionDescriptionFor1(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String{
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)"
}

print (divisionDescriptionFor1(numerator: 12.0, denominator: 3.0, withPunctuation: "!"))

//Nested Functions and Scope
func areaOfTriangleWith(base: Double, height: Double) -> Double{
    let numerator = base * height
    func divide() -> Double{
        return numerator / 2
    }
    return divide()
}

areaOfTriangleWith(base: 3.0, height: 5.0)

//Multiple Returns
func sortedEvenOddNumbers(_ numbers:[Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers{
        if number % 2 == 0{
            evens.append(number)
        } else{
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print ("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds).")

//Optional Return types
func grabMiddleName(fromFullName name: (String, String?, String)) -> String?{
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Karna", nil, "Johnson"))
if let theName = middleName{
    print(theName)
}

//Exiting Early from a Function
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle else{
        print("Hey There!")
        return
    }
    print ("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Karna", "Zoe", "Johnson"))*/

//Bronze Challenge

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)){
    guard let middleName = name.middle, middleName.characters.count > 4 else{
        print ("Hey There!")
        return
    }
    print ("Hey \(middleName)")
}

greetByMiddleName(fromFullName: ("Karna","Zoe", "Johnson"))

//Silver Challenge

func siftBeans (fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]){
    var bean = [String]()
    var other = [String]()
    
    for i in list{
        if i.contains("beans"){
            bean.append(i)
        } else{
            other.append(i)
        }
    }
    return (bean, other)
    
}

let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]






























