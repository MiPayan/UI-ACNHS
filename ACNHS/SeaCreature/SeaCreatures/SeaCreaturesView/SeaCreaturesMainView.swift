//
//  SeaCreatureMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct SeaCreaturesMainView: View {
    
    @StateObject private var seaCreaturesViewModel: SeaCreatureViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    
    init(seaCreaturesViewModel: SeaCreatureViewModel) {
        _seaCreaturesViewModel = StateObject(wrappedValue: seaCreaturesViewModel)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                if isOnBoarding {
                    SeaCreatureNorthernAvailabilityView(seaCreaturesViewModel: seaCreaturesViewModel)
                } else {
                    SeaCreatureSouthernAvailabilityView(seaCreaturesViewModel: seaCreaturesViewModel)
                }
                AllSeaCreatures(seaCreaturesViewModel: seaCreaturesViewModel)
            }
            .background(
                LinearGradient(
                    gradient:
                        Gradient(
                            colors: [
                                Color("ColorBlack"),
                                Color("ColorBlueNight"),
                                Color("ColorBlueRoyal")
                            ]
                        ),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .navigationBarHidden(true)
        }
        .onAppear {
            seaCreaturesViewModel.getSeaCreatureData()
        }
    }
}

struct SeaCreatureGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreaturesMainView(seaCreaturesViewModel: SeaCreatureViewModel())
    }
}
