//
//  BugDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BugDetailsGridView: View {
    let bug: BugData
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            DetailsRowView(
                data: bug,
                image: "Bells",
                title: "Price :",
                value: String(bug.price),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                data: bug,
                image: "Grass",
                title: "Location :",
                value: bug.availability.location,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                data: bug,
                image: "Timer",
                title: "Time :",
                value: bug.availability.time.replacedCharacter("", by: "-"),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                data: bug,
                image: "Rarity",
                title: "Rarity :",
                value: bug.availability.rarity,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                data: bug,
                image: "North",
                title: "Northern hemisphere :",
                value: bug.availability.monthNorthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                data: bug,
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
