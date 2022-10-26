//
//  BodyBugDetailsViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 15/09/2022.
//

import Foundation

final class BodyBugDetailsViewModel {
    
    private let bug: BugData
    
    init(bug: BugData) {
        self.bug = bug
    }
    
    var fileName: String {
        bug.fileName.replaceCharacter("_", by: "").capitalized
    }
    
    var catchPhrase: String {
        "\" \(bug.catchPhrase) \""
    }
}
