//
//  SeaCreatureGlobalView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct SeaCreatureGlobalView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(seaCreatures) { seaCreature in
                        NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                            GlobalRowView(
                                image: seaCreature.iconURI,
                                fileName: seaCreature.fileName,
                                backgroundColor: Color("ColorBlueNightLight")
                            )
                        }
                    }
                }
                .padding()
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
    }
}

struct SeaCreatureGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureGlobalView()
    }
}
