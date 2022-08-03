//
//  SeaCreatureMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct SeaCreatureMainView: View {
    
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    
    init(seaCreatureViewModel: SeaCreatureViewModel) {
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                if isOnBoarding {
                    SeaCreatureNorthernAvailabilityView(seaCreatureViewModel: seaCreatureViewModel)
                } else {
                    SeaCreatureSouthernAvailabilityView(seaCreatureViewModel: seaCreatureViewModel)
                }
                AllSeaCreatures(seaCreatureViewModel: seaCreatureViewModel)
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorBlack"), Color("ColorBlueNight"), Color("ColorBlueRoyal")]),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .navigationBarHidden(true)
        }
        .onAppear {
            seaCreatureViewModel.getSeaCreatureData()
        }
    }
}

struct SeaCreatureGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureMainView(seaCreatureViewModel: SeaCreatureViewModel())
    }
}
