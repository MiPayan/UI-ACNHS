//
//  FishDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import SwiftUI

struct FishDetailsGridView: View {
    
    let fishDetailsGridViewModel: FishDetailsGridViewModel
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 2)) {
            DetailsRowView(
                image: "Bells",
                title: "price",
                value: fishDetailsGridViewModel.price,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "FishingRod",
                title: "location",
                value: fishDetailsGridViewModel.availabilityLocation,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "FishShadow",
                title: "shadow",
                value: fishDetailsGridViewModel.shadow,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "time",
                value: fishDetailsGridViewModel.availabilityTime,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "Rarity",
                title: "rarity",
                value: fishDetailsGridViewModel.rarity,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "North",
                title: "northern_hemisphere",
                value: fishDetailsGridViewModel.northernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
            
            DetailsRowView(
                image: "South",
                title: "southern_hemisphere",
                value: fishDetailsGridViewModel.southernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorBlueRoyal"),
                valueForegroundColor: Color("ColorBlueOcean")
            )
        }
        .padding()
    }
}

struct FishDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        FishDetailsGridView(fishDetailsGridViewModel: FishDetailsGridViewModel(fish: fishes[0]))
            .previewLayout(.sizeThatFits)
    }
}
