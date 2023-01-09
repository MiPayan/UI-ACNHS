//
//  CreatureSelectionView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 08/06/2022.
//

import SwiftUI

struct CreatureSelectionMainView: View {
    
    @StateObject private var fishViewModel: FishViewModel
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    @StateObject private var bugViewModel: BugViewModel
    @StateObject private var fossilViewModel: FossilViewModel
    
    init(fishViewModel: FishViewModel,
         seaCreatureViewModel: SeaCreatureViewModel ,
         bugViewModel: BugViewModel,
         fossilViewModel: FossilViewModel
    ) {
        _fishViewModel = StateObject(wrappedValue: fishViewModel)
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
        _fossilViewModel = StateObject(wrappedValue: fossilViewModel)
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorSandLight")
                    .ignoresSafeArea(.all)
                
                VStack(spacing: 8) {
                    HStack(alignment: .top, spacing: 8) {
                        NavigationLink(destination: OwnedFishView(fishViewModel: FishViewModel())) {
                            CreatureItemView(
                                colorBackground: "ColorBlueRoyal",
                                creatureTitle: "Fishes",
                                image: "fish",
                                numberCreature: fishViewModel.fishes.count
                            )
                        }
                        
                        NavigationLink(destination: OwnedSeaCreatureView(seaCreatureViewModel: SeaCreatureViewModel())) {
                            CreatureItemView(
                                colorBackground: "ColorBlueNight",
                                creatureTitle: "Sea creatures",
                                image: "water.waves",
                                numberCreature: seaCreatureViewModel.seaCreatures.count
                            )
                        }
                    }
                    
                    HStack(alignment: .bottom, spacing: 8) {
                        NavigationLink(destination: OwnedBugView(bugViewModel: BugViewModel())) {
                            CreatureItemView(
                                colorBackground: "ColorGreenDark",
                                creatureTitle: "Bugs",
                                image: "ant",
                                numberCreature: bugViewModel.bugs.count
                            )
                        }
                        
                        NavigationLink(destination: OwnedFossilView(fossilModelView: FossilViewModel())) {
                            CreatureItemView(
                                colorBackground: "ColorBrownHeart",
                                creatureTitle: "Fossils",
                                image: "globe.asia.australia",
                                numberCreature: fossilViewModel.fossils.count
                            )
                        }
                    }
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
        .onAppear {
            fishViewModel.getFishData()
            seaCreatureViewModel.getSeaCreatureData()
            bugViewModel.getBugData()
            fossilViewModel.getFossilData()
        }
    }
}
