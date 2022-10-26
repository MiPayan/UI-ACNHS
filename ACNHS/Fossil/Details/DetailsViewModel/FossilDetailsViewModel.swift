//
//  FossilDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class FossilDetailsViewModel {
    
    private let fossil: FossilData
    
    init(fossil: FossilData) {
        self.fossil = fossil
    }
    
    var imageUri: String {
        fossil.imageURI
    }
    
    var museumPhrase: String {
        fossil.museumPhrase
    }
}
