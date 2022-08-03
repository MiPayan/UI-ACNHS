//
//  AllSeaCreatures.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct AllSeaCreatures: View {
    
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    
    init(seaCreatureViewModel: SeaCreatureViewModel) {
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("All sea creatures :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(seaCreatureViewModel.seaCreatures) { seaCreature in
                    NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                        RowMainView(
                            fileName: seaCreature.fileName,
                            image: seaCreature.iconURI,
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
