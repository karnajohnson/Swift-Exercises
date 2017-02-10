//: Playground - noun: a place where people can play

import UIKit

//fields
var population: Int = 5422
var message: String
var hasPostOffice: Bool = true

//first way
if population < 10000{
    message = "\(population) is a small town."
}else if population >= 10000 && population <= 50000{
        message = "\(population) is a medium sized town."
}else{
         message = "\(population) is pretty big!"
}

//second way
message = population < 10000 ? "\(population) is a small town." : "\(population) is pretty big"

//checking if there is a post office
if !hasPostOffice{
    print("Where do we buy stamps?")
}

print ("The maximum Int value is \(Int.max)")
print ("The minimum Int value is \(Int.min)")

var statusCode: Int = 404
var errorString:String
switch statusCode{
case 400:
    errorString = "Bad Request"
case 401:
    errorString = "Unauthorized"
case 403:
    errorString = "Forbidden"
case 404:
    errorString = "Not Found"
default:
    errorString = "None"
}

switch statusCode{
case 400,401, 403, 404:
    errorString = "There was something wrong with your request."
default:
    errorString += "Please review the request and try again."
}
errorString = "The request failed with this error: "
statusCode = 204
switch statusCode {
case 101, 102:
    //errorString += "Informational 1xx."
    errorString += "Informational \(statusCode)."
case 204:
    errorString += "Successful but no content, 204."
case 300...307:
    //errorString += "redirection 3xx."
    errorString += "redirection \(statusCode)"
case 400...417:
    //errorString += "Client Error 4xx."
    errorString += "Client Error \(statusCode)"
case 500...505:
    //errorString += "Server Error 5xx."
    errorString += "Server Error \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
//default:
  //  errorString = "Unknown. Please review this request and try again."
default:
    //errorString = "\(statusCode) is not an known error."
    errorString = "Unexpected error encountered."
//case let unknownCode :
  //  errorString = "\(unknownCode) is not an known error."
}
statusCode = 418
switch statusCode {
case 101, 102:
    //errorString += "Informational 1xx."
    errorString += "Informational \(statusCode)."
case 204:
    errorString += "Successful but no content, 204."
case 300...307:
    //errorString += "redirection 3xx."
    errorString += "redirection \(statusCode)"
case 400...417:
    //errorString += "Client Error 4xx."
    errorString += "Client Error \(statusCode)"
case 500...505:
    //errorString += "Server Error 5xx."
    errorString += "Server Error \(statusCode)"
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
    //default:
//  errorString = "Unknown. Please review this request and try again."
default:
    //errorString = "\(statusCode) is not an known error."
    errorString = "Unexpected error encountered."
    //case let unknownCode :
    //  errorString = "\(unknownCode) is not an known error."
}
let error  = (statusCode, errorString)
error.0
error.1

let age = 30
if case 18...35 = age{
    print ("You are cool")
}
if case 18...35 = age, age >= 21{
    print("You are cool and of drinking age")
}
if case 18...30 = age, age >= 21, age <= 30{
    print("You are a cool demongraphic!")
}



for i in 1...100 where i % 3 == 0{
    print (i)
}
var myFirstInt: Int = 0
var i = 1
while i < 6{
    myFirstInt += 1
    print (myFirstInt)
    i += 1
}

repeat{
    myFirstInt += 1
    print(myFirstInt)
}while myFirstInt < 10






//fizzbuzz
extension Int {
    func FizzBuzz() -> String{
        switch (self % 3 == 0, self % 5 == 0){
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        case (true, true):
            return "FizzBuzz"
        default:
           return String(self)
        }
    }
}

for i in 1...100{
    print(i.FizzBuzz())
}
print("\n\n\n\n")
func FizzBuzz(i: Int) -> String{
    let result = (i % 3, i % 5)
    switch result{
    case (0, 0):
        return "FizzBuzz"
    case (0, _):
        return "Fizz"
    case (_, 0):
        return "Buzz"
    default:
        return "\(i)"
    }
}


for n in 1...100{
    print(FizzBuzz(i: n))
}







