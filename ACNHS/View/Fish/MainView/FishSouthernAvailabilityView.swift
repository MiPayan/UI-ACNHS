//
//  FishSouthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct FishSouthernAvailabilityView: View {
    @StateObject private var fishViewModel: FishViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = false
    private let gridSetting = GridSetting()
    
    init(fishViewModel: FishViewModel) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Currently available :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            HStack(spacing: 0) {
                Text("(Southern emisphere)")
                    .font(.custom("FinkHeavy", size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Button(action: {
                    withAnimation {
                        isOnBoarding = true
                    }
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .foregroundColor(.white)
                }
            }
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(fishViewModel.getTheFishFromTheSouthernEmisphere()) { fish in
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
