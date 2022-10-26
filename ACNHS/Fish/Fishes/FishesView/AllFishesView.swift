//
//  AllFishesView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct AllFishesView: View {
    
    @StateObject private var fishesViewModel: FishViewModel
    
    init(fishesViewModel: FishViewModel) {
        _fishesViewModel = StateObject(wrappedValue: fishesViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("all_fishes")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(fishesViewModel.fishes) { fish in
                    NavigationLink(
                        destination: FishDetailsView(
                            fishDetailsViewModel: FishDetailsViewModel(fish: fish),
                            bodyFishDetailsViewModel: BodyFishDetailsViewModel(fish: fish),
                            fishDetailsGridViewModel: FishDetailsGridViewModel(fish: fish)
                        )
                    ) {
                        RowMainView(
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
}
