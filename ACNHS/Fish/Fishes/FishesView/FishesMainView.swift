//
//  FishesMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FishesMainView: View {
    
    @StateObject private var fishesViewModel: FishViewModel
    
    init(fishesViewModel: FishViewModel) {
        _fishesViewModel = StateObject(wrappedValue: fishesViewModel)
    }
    
    var body: some View {
        NavigationView {
            switch fishesViewModel.state {
            case .success:
                ScrollView {
                    if fishesViewModel.isOnBoarding {
                        FishNorthernAvailabilityView(fishesViewModel: fishesViewModel)
                    } else {
                        FishSouthernAvailabilityView(fishesViewModel: fishesViewModel)
                    }
                    AllFishesView(fishesViewModel: fishesViewModel)
                }
                .background(
                    LinearGradient(
                        gradient: Gradient(colors:[Color("ColorBlueRoyal"), Color("ColorBlueOcean")]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .navigationBarHidden(true)
            case .loading:
                LoadingView()
            case .error:
                ErrorView()
                    .padding()
            }
        }
        .onAppear {
            fishesViewModel.getFishData()
        }
    }
}

struct FishesGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        FishesMainView(fishesViewModel: FishViewModel())
    }
}
