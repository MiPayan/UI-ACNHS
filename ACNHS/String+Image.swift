//
//  String.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import UIKit

extension String {
    func replaceCharacter(_ oldString: String, by newString: String) -> String {
        let newString = self.replacingOccurrences(of: oldString, with: newString, options: .literal, range: nil)
        return newString
    }
}
