//
//  OwnedFishView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

struct OwnedFishView: View {
    
    @StateObject private var fishViewModel: FishViewModel
    
    init(fishViewModel: FishViewModel) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 4)) {
                ForEach(fishViewModel.fishes) { fish in
                    NavigationLink(
                        destination: FishDetailsView(
                            fishDetailsViewModel: FishDetailsViewModel(fish: fish),
                            bodyFishDetailsViewModel: BodyFishDetailsViewModel(fish: fish),
                            fishDetailsGridViewModel: FishDetailsGridViewModel(fish: fish)
                        )
                    ) {
                        GlobalOwnedRowView(
                            image: fish.iconURI,
                            backgroundColor: Color("ColorBlueRoyal")
                        )
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorSand"), Color("ColorSandLight")]),
                startPoint: .bottom,
                endPoint: .top
            )
        )
        .onAppear {
            fishViewModel.getFishData()
        }
    }
}

//struct OwnedFishView_Previews: PreviewProvider {
//    static var previews: some View {
//        OwnedFishView(fishViewModel: FishViewModel())
//    }
//}
