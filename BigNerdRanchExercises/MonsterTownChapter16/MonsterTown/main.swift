import Foundation

var myTown = Town()
myTown.printDescription()
//myTown.changePopulation(by: 500)

//let genericMonster = Monster()
//genericMonster.town = myTown
//genericMonster.terrorizeTown()

let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()

fredTheZombie.town?.printDescription()
print ("Victim Pool: \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print ("Victim Pool: \(fredTheZombie.victimPool)")
print(Zombie.spookyNoise)

if Zombie.isTerrifying{
    print ("Run away!")
}
