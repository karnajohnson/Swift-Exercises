import Foundation

class Monster{
    static let isTerrifying = true
    class var spookyNoise: String{
        return "Grr"
    }
    var town: Town?
    var name = "Monster"
    
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool){
            town?.population = newVictimPool
        }
    }
    
    func terrorizeTown(){
        if town != nil{
            print ("\(name) is terrorizing the town!")
        }
        else {
            print ("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
