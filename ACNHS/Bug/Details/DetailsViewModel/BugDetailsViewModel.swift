//
//  BugDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class BugDetailsViewModel {
    
    private let bug: BugData
    
    init(bug: BugData) {
        self.bug = bug
    }
    
    var iconUri: String {
        bug.iconURI
    }
    
    var museumPhrase: String {
        bug.museumPhrase
    }
}
