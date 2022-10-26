//
//  FossilDetailsGridViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class FossilDetailsGridViewModel {
    
    private let fossil: FossilData
    
    init(fossil: FossilData) {
        self.fossil = fossil
    }
    
    var price: String {
        String(fossil.price)
    }
}
