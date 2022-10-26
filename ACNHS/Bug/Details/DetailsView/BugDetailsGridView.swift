//
//  BugDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BugDetailsGridView: View {
    
    let bugDetailsGridViewModel: BugDetailsGridViewModel
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 2)) {
            DetailsRowView(
                image: "Bells",
                title: "price",
                value: bugDetailsGridViewModel.price,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Grass",
                title: "location",
                value: bugDetailsGridViewModel.availabilityLocation,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "time",
                value: bugDetailsGridViewModel.availabilityTime,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Rarity",
                title: "rarity",
                value: bugDetailsGridViewModel.rarity,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "North",
                title: "northern_hemisphere",
                value: bugDetailsGridViewModel.northernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "South",
                title: "southern_hemisphere",
                value: bugDetailsGridViewModel.southernHemisphereAvailability,
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
        }
    }
}

struct BugDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        BugDetailsGridView(bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bugs[0]))
            .previewLayout(.sizeThatFits)
    }
}
