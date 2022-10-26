//
//  BodyFossilDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class BodyFossilDetailsViewModel {
    
    private let fossil: FossilData
    
    init(fossil: FossilData) {
        self.fossil = fossil
    }
    
    var fileName: String {
        fossil.fileName.replaceCharacter("_", by: "").capitalized
    }
}
