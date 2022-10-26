//
//  SeaCreatureDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsGridView: View {
    
    let seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 2)) {
            DetailsRowView(
                image: "Bells",
                title: "price",
                value: seaCreatureDetailsGridViewModel.price,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "SeaCreatureShadow",
                title: "shadow",
                value: seaCreatureDetailsGridViewModel.shadow,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "time",
                value: seaCreatureDetailsGridViewModel.availabilityTime,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Speedmeter",
                title: "speed",
                value: seaCreatureDetailsGridViewModel.speed,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "North",
                title: "northern_hemisphere",
                value: seaCreatureDetailsGridViewModel.northernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "South",
                title: "southern_hemisphere",
                value: seaCreatureDetailsGridViewModel.southernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
        }
        .padding()
    }
}

struct SeaCreatureDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureDetailsGridView(
            seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(
                seaCreature: seaCreatures[0]
            )
        )
        .previewLayout(.sizeThatFits)
    }
}
