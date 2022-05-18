//
//  SeaCreatureDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct SeaCreatureDetailsView: View {
    let seaCreatureData: SeaCreatureData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: seaCreatureData.iconURI,
                    backgroundColor: Gradient(colors: [Color("ColorBlueNightLight"), Color("ColorBlueNight")])
                )
                
                BodySeaCreatureDetailsView(seaCreatureData: seaCreatureData)
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueMidnight"),
                    museumPhrase: seaCreatureData.museumPhrase,
                    foregroundMuseumPhrase: Color("ColorBlueNight")
                )
                .padding([.horizontal, .top])
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
