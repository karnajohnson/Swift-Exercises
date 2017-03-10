import Foundation

class Monster{
    var town: Town?
    var name = "Monster"
    
    func terrorizeTown(){
        if town != nil{
            print ("\(name) is terrorizing the town!")
        }
        else {
            print ("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
