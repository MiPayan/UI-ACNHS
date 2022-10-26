//
//  FishDetailsGridViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 14/09/2022.
//

import Foundation

final class FishDetailsGridViewModel {
    
    private let fish: FishData
    
    init(fish: FishData) {
        self.fish = fish
    }
    
    var price: String {
        String(fish.price)
    }
    
    var availabilityLocation: String {
        fish.availability.location.replaceCharacter("when ", by: "")
    }
    
    var shadow: String {
        fish.shadow
    }
    
    var availabilityTime: String {
        fish.availability.time.isEmpty ? "Always" : fish.availability.time
    }
    
    var rarity: String {
        String(fish.availability.rarity)
    }
    
    var northernHemisphereAvailability: String {
        fish.availability.monthNorthern.isEmpty ? "Always" : fish.availability.monthNorthern
    }
    
    var southernHemisphereAvailability: String {
        fish.availability.monthSouthern.isEmpty ? "Always" : fish.availability.monthSouthern
    }
}
