//: Playground - noun: a place where people can play

import UIKit

//Closures - Chapter 13 - The Big Nerd Ranch - Swift 3

//Bronze Challenge
let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13].sorted()

//Silver Challenge
volunteerCounts.sorted(by: <)

//Gold Challenge
let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map { (population: Int) -> Int in return population * 2 }
projectedPopulations
let totalProjection = projectedPopulations.reduce(0,+)



