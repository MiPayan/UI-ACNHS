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
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 3)
    }

    var detailsGridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
    }
    
    var ownedGridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 4)
    }
}
