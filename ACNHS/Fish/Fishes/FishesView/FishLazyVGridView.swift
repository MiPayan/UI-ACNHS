//
//  FishLazyVGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 27/10/2022.
//

import SwiftUI

struct FishLazyVGridView: View {
    
    let fishesData: [FishData]

    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
            ForEach(fishesData) { fish in
                NavigationLink(
                    destination: FishDetailsView(
                        fishDetailsViewModel: FishDetailsViewModel(fish: fish),
                        bodyFishDetailsViewModel: BodyFishDetailsViewModel(fish: fish),
                        fishDetailsGridViewModel: FishDetailsGridViewModel(fish: fish)
                    )
                ) {
                    ItemMainView(
                        fileName: fish.fileName,
                        image: fish.iconURI,
                        price: fish.price,
                        backgroundColor: Color("ColorBlueRoyal")
                    )
                }
            }
        }
        .padding()
    }
}
