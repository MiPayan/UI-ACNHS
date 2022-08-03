//
//  SeaCreatureDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsGridView: View {
    
    private let seaCreatureViewModel = SeaCreatureViewModel()
    let seaCreatureData: SeaCreatureData
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 2)) {
            DetailsRowView(
                image: "Bells",
                title: "Price :",
                value: seaCreatureViewModel.getPrice(seaCreature: seaCreatureData),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "SeaCreatureShadow",
                title: "Shadow:",
                value: seaCreatureViewModel.getShadow(seaCreature: seaCreatureData),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "Time :",
                value: seaCreatureViewModel.formatAvailabilityTime(seaCreature: seaCreatureData),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "Speedmeter",
                title: "Speed :",
                value: seaCreatureViewModel.getSpeed(seaCreature: seaCreatureData),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "North",
                title: "Northern hemisphere :",
                value: seaCreatureViewModel.formatNorthernEmisphere(seaCreature: seaCreatureData),
                subTitleForegroundColor: Color("ColorBlueNight"),
                valueForegroundColor: Color("ColorBlueMidnight")
            )
            
            DetailsRowView(
                image: "South",
                title: "Southern hemisphere :",
                value: seaCreatureViewModel.formatSouthernEmisphere(seaCreature: seaCreatureData),
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
