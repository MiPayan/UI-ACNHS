//
//  Constant.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 05/05/2022.
//

import SwiftUI

let fishes: [FishData] = Bundle.main.decode("Fishes.json")
let seaCreatures: [SeaCreatureData] = Bundle.main.decode("SeaCreatures.json")
let bugs: [BugData] = Bundle.main.decode("Bugs.json")
let fossils: [FossilData] = Bundle.main.decode("Fossils.json")

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

var ownedGridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 4)
}

var monoGridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}
