//
//  SeaCreatureDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsGridView: View {
    let seaCreatureData: SeaCreatureData
    private let gridSetting = GridSetting()
    var body: some View {
        LazyVGrid(columns: gridSetting.detailsGridLayout) {
            DetailsRowView(
                image: "Bells",
                title: "Price :",
                value: String(seaCreatureData.price),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "SeaCreatureShadow",
                title: "Shadow:",
                value: seaCreatureData.shadow,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "Time :",
                value: seaCreatureData.availability.time.replacedCharacter("", by: "-"),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Speedmeter",
                title: "Speed :",
                value: seaCreatureData.speed,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "North",
                title: "Northern hemisphere :",
                value: seaCreatureData.availability.monthNorthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "South",
                title: "Southern hemisphere :",
                value: seaCreatureData.availability.monthSouthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
        }
        .padding()
    }
}

struct SeaCreatureDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureDetailsGridView(seaCreatureData: seaCreatures[0])
            .previewLayout(.sizeThatFits)
    }
}
