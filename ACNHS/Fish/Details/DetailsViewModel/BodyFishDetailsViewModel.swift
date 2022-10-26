//
//  BodyFishDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 14/09/2022.
//

import Foundation

final class BodyFishDetailsViewModel {
    
    private let fish: FishData
    
    init(fish: FishData) {
        self.fish = fish
    }
    
    var fileName: String {
        fish.fileName.replaceCharacter("_", by: "").capitalized
    }
    
    var catchPhrase: String {
        "\" \(fish.catchPhrase) \""
    }
}
