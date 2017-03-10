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

let theVampire = Vampire()
theVampire.terrorizeTown()
theVampire.terrorizeTown()
theVampire.terrorizeTown()

