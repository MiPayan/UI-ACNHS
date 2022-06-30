//
//  BugDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BugDetailsGridView: View {
    let bug: BugData
    private let gridSetting = GridSetting()
    var body: some View {
        LazyVGrid(columns: gridSetting.detailsGridLayout) {
            DetailsRowView(
                image: "Bells",
                title: "Price :",
                value: String(bug.price),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Grass",
                title: "Location :",
                value: bug.availability.location,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "Time :",
                value: bug.availability.time.replacedCharacter("", by: "-"),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Rarity",
                title: "Rarity :",
                value: bug.availability.rarity,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "North",
                title: "Northern hemisphere :",
                value: bug.availability.monthNorthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "South",
                title: "Southern hemisphere :",
                value: bug.availability.monthSouthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
        }
    }
}

struct BugDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        BugDetailsGridView(bug: bugs[0])
            .previewLayout(.sizeThatFits)
    }
}
