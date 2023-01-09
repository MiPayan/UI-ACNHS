//
//  SeaCreatureLazyVGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 27/10/2022.
//

import SwiftUI

struct SeaCreatureLazyVGridView: View {
    
    let seaCreaturesData: [SeaCreatureData]
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
            ForEach(seaCreaturesData) { seaCreature in
                NavigationLink(
                    destination: SeaCreatureDetailsView(
                        seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel(seaCreature: seaCreature),
                        bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel(seaCreature: seaCreature),
                        seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(seaCreature: seaCreature)
                    )
                ) {
                    ItemMainView(
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
