import Foundation

class Zombie: Monster{
    override class var spookyNoise: String{
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false
    var myTown = Town()
    final override func terrorizeTown() {
        if !isFallingApart {
            myTown.changePopulation(by: -10)
        }
        super.terrorizeTown()
        
    }
}
