//: Playground - noun: a place where people can play

import UIKit

//Chapter 2 Exercise - Types, Constants, Variables
let numberOfStopLights: Int = 4
var population: Int
population = 1115422
var unemployment: Int = 3 //what I added for the exercise
let townName: String = "Knowhere"
let townDescription = "\(townName) has a population of \(population), \(numberOfStopLights) stoplights, and has \(unemployment) employees unemployed." //and here with the unemployment

print(townDescription)

//Chapter 3 Exercise - Conditionals
var message: String
var hasPostOffice: Bool = true
if population < 10000{
    message = "\(population) is a small town!"
}else if population >= 10000 && population < 50000{
    message = "\(population) is a medium town!"
} else if population >= 50000 && population <= 100000{ //what I added for the exercise
    message = "\(population) is a medium-large town!"
}
else{
    message = "\(population) is pretty big!"
}

print (message)

if !hasPostOffice {
    print ("Where do we buy stamps?")
}

//Chapter 4 Exercise - Numbers
