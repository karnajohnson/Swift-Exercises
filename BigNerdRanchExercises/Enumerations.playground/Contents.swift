//: Playground - noun: a place where people can play

import UIKit

//Enumerations - Chapter 14 - Big Nerd Ranch - Swift 3

//Bronze Challenge
enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case perimeter(width: Double, height: Double)
    //Silver Challenge
    case triangle(side1: Double, side2: Double)
    
    func area() -> Double{
        switch self{
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .perimeter(width: w, height: h):
            return w + w + h + h
        //Silver Challenge
        case let .triangle(side1: a, side2: b):
            return sqrt(pow(a, b))
        }
    }
}
