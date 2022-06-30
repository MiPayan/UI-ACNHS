//
//  FishDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import SwiftUI

struct FishDetailsGridView: View {
    let fishViewModel = FishViewModel()
    let fishData: FishData
    var body: some View {
        LazyVGrid(columns: GridSetting().detailsGridLayout) {
            DetailsRowView(
                image: "Bells",
                title: "Price :",
                value: fishViewModel.getPrice(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "FishingRod",
                title: "Location :",
                value: fishViewModel.formatAvailabilityLocation(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "FishShadow",
                title: "Shadow:",
                value: fishViewModel.getShadow(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "Time :",
                value: fishViewModel.formatAvailabilityTime(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "Rarity",
                title: "Rarity :",
                value: fishViewModel.getRarity(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "North",
                title: "Northern hemisphere :",
                value: fishViewModel.formatNorthernEmisphere(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "South",
                title: "Southern hemisphere :",
                value: fishViewModel.formatSouthernEmisphere(fish: fishData),
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
        }
        .padding()
    }
}

struct FishDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        FishDetailsGridView(fishData: fishes[0])
            .previewLayout(.sizeThatFits)
    }
}
