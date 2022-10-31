//
//  FishNorthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct FishNorthernAvailabilityView: View {
    
    @AppStorage("OnBoarding") private var isOnBoarding = true
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
                Text("northern_hemisphere_parenthese")
                    .font(.custom("FinkHeavy", size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                
                Button(action: {
                    withAnimation {
                        isOnBoarding = false
                    }
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .foregroundColor(.white)
                }
            }
            FishLazyVGridView(fishesData: fishesViewModel.makeFishesFromTheNorthernHemisphere())
        }
    }
}
