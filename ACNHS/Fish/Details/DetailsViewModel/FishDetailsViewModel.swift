//
//  FishDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 06/09/2022.
//

import SwiftUI

final class FishDetailsViewModel {

    private let fish: FishData
    
    init(fish: FishData) {
        self.fish = fish
    }
    
    var iconUri: String {
        fish.iconURI
    }
    
    var museumPhrase: String {
        fish.museumPhrase
    }
}
