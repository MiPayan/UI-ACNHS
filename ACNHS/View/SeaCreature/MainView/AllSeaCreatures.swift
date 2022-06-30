//
//  AllSeaCreatures.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct AllSeaCreatures: View {
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    private let gridSetting = GridSetting()
    
    init(seaCreatureViewModel: SeaCreatureViewModel) {
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("All sea creatures :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(seaCreatureViewModel.seaCreatures) { seaCreature in
                    NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                        RowMainView(
                            image: seaCreature.iconURI,
                            fileName: seaCreature.fileName,
                            price: seaCreature.price,
                            backgroundColor: Color("ColorBlueNightLight")
                        )
                    }
                }
            }
            .padding()
        }
    }
}

struct AllSeaCreature_Previews: PreviewProvider {
    static var previews: some View {
        AllSeaCreatures(seaCreatureViewModel: SeaCreatureViewModel())
    }
}
