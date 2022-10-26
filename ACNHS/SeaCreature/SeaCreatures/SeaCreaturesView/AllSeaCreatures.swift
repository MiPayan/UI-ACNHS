//
//  AllSeaCreatures.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct AllSeaCreatures: View {
    
    @StateObject private var seaCreaturesViewModel: SeaCreatureViewModel
    
    init(seaCreaturesViewModel: SeaCreatureViewModel) {
        _seaCreaturesViewModel = StateObject(wrappedValue: seaCreaturesViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("all_sea_creatures")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(seaCreaturesViewModel.seaCreatures) { seaCreature in
                    NavigationLink(
                        destination: SeaCreatureDetailsView(
                            seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel(seaCreature: seaCreature),
                            bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel(seaCreature: seaCreature),
                            seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(seaCreature: seaCreature)
                        )
                    ) {
                        RowMainView(
                            fileName: seaCreature.fileName,
                            image: seaCreature.iconURI,
                            price: seaCreature.price,
                            backgroundColor: Color("ColorBlueNightLite")
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
        AllSeaCreatures(seaCreaturesViewModel: SeaCreatureViewModel())
    }
}
