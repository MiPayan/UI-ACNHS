//
//  StructGrid.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/06/2022.
//

import SwiftUI

struct GridSetting {
    
    private let columnSpacing: CGFloat = 8
    private let rowSpacing: CGFloat = 8
    
    func gridLayout(numberPerRow: Int) -> [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: numberPerRow)
    }
}
