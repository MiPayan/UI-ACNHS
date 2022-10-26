//
//  SeaCreatureDetailsGridViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class SeaCreatureDetailsGridViewModel {
    
    private let seaCreature: SeaCreatureData
    
    init(seaCreature: SeaCreatureData) {
        self.seaCreature = seaCreature
    }
    
    var price: String {
        String(seaCreature.price)
    }
    
    var shadow: String {
        seaCreature.shadow
    }
    
    var availabilityTime: String {
        seaCreature.availability.time.isEmpty ? "Always" : seaCreature.availability.time
    }
    
    var speed: String {
        seaCreature.speed
    }
    
    var northernHemisphereAvailability: String {
        seaCreature.availability.monthNorthern.isEmpty ? "Always" : seaCreature.availability.monthNorthern
    }
    
    var southernHemisphereAvailability: String {
        seaCreature.availability.monthSouthern.isEmpty ? "Always" : seaCreature.availability.monthSouthern
    }
}
