//
//  BodySeaCreatureDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodySeaCreatureDetailsView: View {
    
    let bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel
    let seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bodySeaCreatureDetailsViewModel.fileName)
                .foregroundColor(Color("ColorBlueMidnight"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text(bodySeaCreatureDetailsViewModel.catchPhrase)
                .foregroundColor(Color("ColorBlueNight"))
                .font(.custom("FinkHeavy", size: 18))
                .padding([.horizontal])
            
            SeaCreatureDetailsGridView(
                seaCreatureDetailsGridViewModel: seaCreatureDetailsGridViewModel
            )
        }
        .padding()
    }
}

struct BodySeaCreatureDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodySeaCreatureDetailsView(
            bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel(
                seaCreature: seaCreatures[0]
            ),
            seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(
                seaCreature: seaCreatures[0]
            )
        )
        .previewLayout(.sizeThatFits)
    }
}
