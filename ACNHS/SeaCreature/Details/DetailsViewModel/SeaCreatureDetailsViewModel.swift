//
//  SeaCreatureDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class SeaCreatureDetailsViewModel {
    
    private let seaCreature: SeaCreatureData
    
    init(seaCreature: SeaCreatureData) {
        self.seaCreature = seaCreature
    }
    
    var iconUri: String {
        seaCreature.iconURI
    }
    
    var museumPhrase: String {
        seaCreature.museumPhrase
    }
}
