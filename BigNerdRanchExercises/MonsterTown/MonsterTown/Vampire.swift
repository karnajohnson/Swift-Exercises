import Foundation

class Vampire: Monster{
    var vampire = [Vampire]()
    var myTown = Town()
    override func terrorizeTown() {
        vampire.append(Vampire())
        myTown.changePopulation(by: -1)
        print ("Adding a vampire")
        print ("Total amount of vampires: \(vampire.count)")
        print ("Population: \(myTown.population)")
    }
}
