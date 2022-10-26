//
//  SeaCreatureDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsView: View {
    
    let seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel
    let bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel
    let seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: seaCreatureDetailsViewModel.iconUri,
                    backgroundColor: Gradient(colors: [Color("ColorBlueNightLite"), Color("ColorBlueNight")])
                )
                
                BodySeaCreatureDetailsView(
                    bodySeaCreatureDetailsViewModel: bodySeaCreatureDetailsViewModel,
                    seaCreatureDetailsGridViewModel: seaCreatureDetailsGridViewModel
                )
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueMidnight"),
                    museumPhrase: seaCreatureDetailsViewModel.museumPhrase,
                    foregroundMuseumPhrase: Color("ColorBlueNight")
                )
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("ColorSand"))
    }
}

struct SeaCreatureDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureDetailsView(
            seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel(
                seaCreature: seaCreatures[0]
            ),
            bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel(
                seaCreature: seaCreatures[0]
            ),
            seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(
                seaCreature: seaCreatures[0]
            )
        )
    }
}
