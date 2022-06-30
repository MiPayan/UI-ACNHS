//
//  AllFishesView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct AllFishesView: View {
    @StateObject private var fishViewModel: FishViewModel
    private let gridSetting = GridSetting()
    
    init(fishViewModel: FishViewModel) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("All fishes :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(fishViewModel.fishes) { fish in
                    NavigationLink(destination: FishDetailsView(fishData: fish)) {
                        RowMainView(
                            image: fish.iconURI,
                            fileName: fish.fileName,
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
