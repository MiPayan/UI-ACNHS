//
//  BodySeaCreatureDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodySeaCreatureDetailsView: View {
    
    private let seaCreatureViewModel = SeaCreatureViewModel()
    let seaCreatureData: SeaCreatureData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(seaCreatureViewModel.getFileName(seaCreature: seaCreatureData))
                .foregroundColor(Color("ColorBlueMidnight"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text(seaCreatureViewModel.formatCatchPhrase(seaCreature: seaCreatureData))
                .foregroundColor(Color("ColorBlueNight"))
                .font(.custom("FinkHeavy", size: 18))
                .padding([.horizontal])
            
            SeaCreatureDetailsGridView(seaCreatureData: seaCreatureData)
        }
        .padding()
    }
}

struct BodySeaCreatureDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodySeaCreatureDetailsView(seaCreatureData: seaCreatures[0])
            .previewLayout(.sizeThatFits)
    }
}
