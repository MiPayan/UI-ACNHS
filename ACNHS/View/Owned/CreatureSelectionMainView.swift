//
//  CreatureSelectionView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 08/06/2022.
//

import SwiftUI

struct CreatureSelectionMainView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("ColorSandLight")
                    .ignoresSafeArea(.all)
                
                VStack(spacing: 8) {
                    HStack(alignment: .top, spacing: 8) {
                        NavigationLink(destination: OwnedFishView(fishViewModel: FishViewModel())) {
                            CreatureItemView(
                                imageBackground: "Beach",
                                creatureTitle: "Fishes",
                                image: "Fish"
                            )
                        }
                        
                        NavigationLink(destination: OwnedSeaCreatureView(seaCreatureViewModel: SeaCreatureViewModel())) {
                            CreatureItemView(
                                imageBackground: "Sea",
                                creatureTitle: "Sea creatures",
                                image: "SeaCreature"
                            )
                        }
                    }
                    
                    HStack(alignment: .bottom, spacing: 8) {
                        NavigationLink(destination: OwnedBugView(bugViewModel: BugViewModel())) {
                            CreatureItemView(
                                imageBackground: "Nature",
                                creatureTitle: "Bugs",
                                image: "Butterfly"
                            )
                        }
                        
                        NavigationLink(destination: OwnedFossilView(fossilModelView: FossilViewModel())) {
                            CreatureItemView(
                                imageBackground: "Underground",
                                creatureTitle: "Fossils",
                                image: "Fossil"
                            )
                        }
                    }
                }
                .navigationBarHidden(true)
                .padding()
            }
        }
    }
}

struct CreatureSelectionGrid_Previews: PreviewProvider {
    static var previews: some View {
        CreatureSelectionMainView()
            .previewLayout(.sizeThatFits)
    }
}
