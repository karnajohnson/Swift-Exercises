//: Playground - noun: a place where people can play

import UIKit

//Chapter 9 - Arrays - Big Nerd Ranch

//Bronze Challenge
var toDoList = ["Take out garbage", "Pay bills", "Cross off finished items"]

if toDoList.isEmpty{
    print("There is nothing in the array.")
}else{
    print ("There are items in the array.")
}

//Silver Challenge
for item in toDoList.reversed(){
    print(item)
}

//Gold Challenge
var bucketList = [
                "Climb Mt. Kilimanjaro",
                "Fly hot air ballon to Fiji",
                "Toboggen accress Alaska",
                "Go on a walkabout in Australia",
                "Scuba dive in the Great Blue Hole",
                "Find a triple rainbow"
                ]

let theIndex = bucketList.index(of: "Fly hot air ballon to Fiji")

let theSecondIndex = bucketList.index(theIndex!, offsetBy: 2)

let result = bucketList[theSecondIndex]

print(result)
