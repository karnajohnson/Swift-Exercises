import Foundation

class Zombie: Monster{
    var walksWithLimp = true
    var myTown = Town()
    final override func terrorizeTown() {
        if myTown.population > 0{
            myTown.changePopulation(by: -10)
            super.terrorizeTown()
        }else{
            myTown.population = 0
        }
    }
}
