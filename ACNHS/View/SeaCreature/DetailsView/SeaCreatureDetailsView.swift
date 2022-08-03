//
//  SeaCreatureDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsView: View {
    
    private let seaCreatureViewModel = SeaCreatureViewModel()
    let seaCreatureData: SeaCreatureData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: seaCreatureViewModel.getIconUri(seaCreature: seaCreatureData),
                    backgroundColor: Gradient(colors: [Color("ColorBlueNightLight"), Color("ColorBlueNight")])
                )
                
                BodySeaCreatureDetailsView(seaCreatureData: seaCreatureData)
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueMidnight"),
                    museumPhrase: seaCreatureViewModel.getMuseumPhrase(seaCreature: seaCreatureData),
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
        SeaCreatureDetailsView(seaCreatureData: seaCreatures[0])
    }
}
