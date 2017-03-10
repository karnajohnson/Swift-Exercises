//Sliver, Gold Challenge

import Foundation
struct Mayor {
    private var anxietyLevel: Int = 0
    
    mutating func notifiyOfPopulationChange(populationChange : Int ) {
        if populationChange < 0 {
            
            anxietyLevel += 1
            
            print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
        }
    }
}
