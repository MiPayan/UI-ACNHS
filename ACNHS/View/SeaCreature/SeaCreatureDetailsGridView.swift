//
//  SeaCreatureDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsGridView: View {
    let seaCreatureData: SeaCreatureData
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            DetailsRowView(
                data: seaCreatureData,
                image: "Bells",
                title: "Price :",
                value: String(seaCreatureData.price),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                data: seaCreatureData,
                image: "SeaCreatureShadow",
                title: "Shadow:",
                value: seaCreatureData.shadow,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                data: seaCreatureData,
                image: "Timer",
                title: "Time :",
                value: seaCreatureData.availability.time.replacedCharacter("", by: "-"),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                data: seaCreatureData,
                image: "North",
                title: "Northern hemisphere :",
                value: seaCreatureData.availability.monthNorthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                data: seaCreatureData,
                image: "South",
                title: "Southern hemisphere :",
                value: seaCreatureData.availability.monthSouthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
        }
    }
}

struct SeaCreatureDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureDetailsGridView(seaCreatureData: seaCreatures[0])
            .previewLayout(.sizeThatFits)
    }
}
