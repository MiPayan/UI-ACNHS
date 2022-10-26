//
//  FishSouthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct FishSouthernAvailabilityView: View {
    
    @AppStorage("OnBoarding") private var isOnBoarding = false
    @StateObject private var fishesViewModel: FishViewModel
    
    init(fishesViewModel: FishViewModel) {
        _fishesViewModel = StateObject(wrappedValue: fishesViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("currently_available")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            HStack(spacing: 0) {
                Text("southern_hemisphere_parenthese")
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
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(fishesViewModel.makeFishesFromTheSouthernHemisphere()) { fish in
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
