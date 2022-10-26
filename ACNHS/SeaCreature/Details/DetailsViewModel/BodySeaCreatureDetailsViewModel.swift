//
//  BodySeaCreatureDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class BodySeaCreatureDetailsViewModel {
    
    private let seaCreature: SeaCreatureData
    
    init(seaCreature: SeaCreatureData) {
        self.seaCreature = seaCreature
    }
    
    var fileName: String {
        seaCreature.fileName.replaceCharacter("_", by: "").capitalized
    }
    
    var catchPhrase: String {
        "\" \(seaCreature.catchPhrase) \""
    }
}
