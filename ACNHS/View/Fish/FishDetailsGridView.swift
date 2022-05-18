//
//  FishDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import SwiftUI

struct FishDetailsGridView: View {
    let fishData: FishData
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            DetailsRowView(
                data: fishData,
                image: "Bells",
                title: "Price :",
                value: String(fishData.price),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "FishingRod",
                title: "Location :",
                value: fishData.availability.location.replacedCharacter("when ", by: ""),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "FishShadow",
                title: "Shadow:",
                value: fishData.shadow,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "Timer",
                title: "Time :",
                value: fishData.availability.time.replacedCharacter("", by: "All the time"),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "Rarity",
                title: "Rarity :",
                value: fishData.availability.rarity,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "North",
                title: "Northern hemisphere :",
                value: fishData.availability.monthNorthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                data: fishData,
                image: "South",
                title: "Southern hemisphere :",
                value: fishData.availability.monthSouthern.replacedCharacter("-", by: " - "),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
        }
    }
}

struct FishDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        FishDetailsGridView(fishData: fishes[0])
            .previewLayout(.sizeThatFits)
    }
}
