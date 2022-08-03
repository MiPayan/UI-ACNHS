//
//  BugDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BugDetailsGridView: View {
    
    let bugViewModel = BugViewModel()
    let bug: BugData
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 2)) {
            DetailsRowView(
                image: "Bells",
                title: "Price :",
                value: bugViewModel.getPrice(bug: bug),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Grass",
                title: "Location :",
                value: bugViewModel.getAvailabilityLocation(bug: bug),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Timer",
                title: "Time :",
                value: bugViewModel.formatAvailabilityTime(bug: bug),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "Rarity",
                title: "Rarity :",
                value: bugViewModel.getRarity(bug: bug),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "North",
                title: "Northern hemisphere :",
                value: bugViewModel.formatNorthernEmisphere(bug: bug),
                subTitleForegroundColor: Color("ColorGreenDark"),
                valueForegroundColor: Color("ColorGreenGrass")
            )
            
            DetailsRowView(
                image: "South",
                title: "Southern hemisphere :",
                value: bugViewModel.formatSouthernEmisphere(bug: bug),
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
