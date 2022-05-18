//
//  String.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import UIKit

extension String {
    func loadImage() -> UIImage {
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            guard let data = try? Data(contentsOf: url) else {
                return UIImage()
            }
            
            return UIImage(data: data) ?? UIImage()
        }
    }
    
    func replacedCharacter(_ oldString: String, by newString: String) -> String {
        let newString = self.replacingOccurrences(of: oldString, with: newString, options: .literal, range: nil)
        return newString
    }
}
