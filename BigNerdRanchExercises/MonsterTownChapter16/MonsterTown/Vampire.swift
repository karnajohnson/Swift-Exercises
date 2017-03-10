import Foundation

class Vampire: Monster{
    var vampire = [Vampire]()
    var myTown = Town()
    override func terrorizeTown() {
        let currentPopulation = town?.population ?? 0
        
        if currentPopulation > 0{
            myTown.changePopulation(by: -1)
            vampire.append(Vampire())
        } else{
            town = nil
        }
        super.terrorizeTown()
    }
}
