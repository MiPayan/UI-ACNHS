//
//  BugDetailsGridViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class BugDetailsGridViewModel {
    
    private let bug: BugData
    
    init(bug: BugData) {
        self.bug = bug
    }
    
    var price: String {
        String(bug.price)
    }
    
    var availabilityLocation: String {
        bug.availability.location
    }
    
    var availabilityTime: String {
        bug.availability.time.isEmpty ? "Always" : bug.availability.time
    }
    
    var rarity: String {
        bug.availability.rarity
    }
    
    var northernHemisphereAvailability: String {
        bug.availability.monthNorthern.isEmpty ? "Always" : bug.availability.monthNorthern
    }
    
    var southernHemisphereAvailability: String {
        bug.availability.monthSouthern.isEmpty ? "Always" : bug.availability.monthSouthern
    }
}
