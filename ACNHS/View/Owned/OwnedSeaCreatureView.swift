//
//  OwnedSeaCreatureView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 23/06/2022.
//

import SwiftUI

struct OwnedSeaCreatureView: View {
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    private let gridSetting = GridSetting()
    
    init(seaCreatureViewModel: SeaCreatureViewModel) {
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridSetting.ownedGridLayout) {
                ForEach(seaCreatureViewModel.seaCreatures) { seaCreature in
                    NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                        GlobalOwnedRowView(
                            image: seaCreature.iconURI,
                            backgroundColor: Color("ColorBlueNight")
                        )
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorSand"), Color("ColorSandLight")]),
                startPoint: .bottom,
                endPoint: .top
            )
        )
        .onAppear {
            seaCreatureViewModel.getSeaCreatureData()
        }
    }
}

struct OwnedSeaCreatureView_Previews: PreviewProvider {
    static var previews: some View {
        OwnedSeaCreatureView(seaCreatureViewModel: SeaCreatureViewModel())
    }
}
