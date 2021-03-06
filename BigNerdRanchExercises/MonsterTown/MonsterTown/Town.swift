import Foundation

struct Town {
    var population = 5_422
    var numberOfStopLights = 4
    
    func printDescription(){
        print("Population: \(population); number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
