//
//  OwnedFishView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

struct OwnedFishView: View {
    @StateObject private var fishViewModel: FishViewModel
    private let gridSetting = GridSetting()
    
    init(fishViewModel: FishViewModel) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridSetting.ownedGridLayout) {
                ForEach(fishViewModel.fishes) { fish in
                    NavigationLink(destination: FishDetailsView(fishData: fish)) {
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

struct OwnedFishView_Previews: PreviewProvider {
    static var previews: some View {
        OwnedFishView(fishViewModel: FishViewModel())
    }
}
