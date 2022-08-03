//
//  FishesMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FishesMainView: View {
    
    @StateObject private var fishViewModel: FishViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    
    init(fishViewModel: FishViewModel) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                if isOnBoarding {
                    FishNorthernAvailabilityView(fishViewModel: fishViewModel)
                } else {
                    FishSouthernAvailabilityView(fishViewModel: fishViewModel)
                }
                AllFishesView(fishViewModel: fishViewModel)
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorBlueRoyal"), Color("ColorBlueOcean")]),
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

struct FishesGlobalView_Previews: PreviewProvider {
    static var previews: some View {
            FishesMainView(fishViewModel: FishViewModel())
    }
}
