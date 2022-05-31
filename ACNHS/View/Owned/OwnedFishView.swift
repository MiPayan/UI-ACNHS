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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: ownedGridLayout) {
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
            .navigationBarHidden(true)
        }
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
