import Foundation

struct Town {
    static let region = "South"
    var population = 1{
        didSet(oldPopulation){
            var populationChanged = population - oldPopulation
            //Bronze Challenge
            if population < oldPopulation{
                print("The population just dropped from \(oldPopulation) to \(population)!!!!")
            }
            //part of the gold challenge
            mayor.notifiyOfPopulationChange(populationChange: populationChanged)
        }
        
    }
    var populationChanged = false
    var numberOfStopLights = 4
    
    var mayor = Mayor()
    
    enum Size{
        case small
        case medium
        case large
    }
    var townSize : Size{
        get {
            switch self.population{
            case 0...10:
                return Size.small
                
            case 11...50:
                return Size.medium
                
            default:
                return Size.large
            }
        }
    }
    func printDescription(){
        print("Population: \(population); number of stoplights: \(numberOfStopLights)")
    }
    
    mutating func changePopulation(by amount: Int){
        population += amount
    }
}
