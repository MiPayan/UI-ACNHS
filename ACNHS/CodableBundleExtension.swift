//
//  CodableBundleExtension.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 05/05/2022.
//

import UIKit

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //  I. Locate JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //  II.  Create a property for the data.
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        //  III. Create a decoder.
        let decoder = JSONDecoder()
        
        //  IV. Create a property for the decoded data.
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle ")
        }
        
        //  V. Return the ready-to-use data.
        return decodedData
    }
}
