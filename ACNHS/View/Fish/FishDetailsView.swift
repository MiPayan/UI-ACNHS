//
//  FishDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 06/05/2022.
//

import SwiftUI

struct FishDetailsView: View {
    let fishData: FishData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: fishData.iconURI,
                    backgroundColor: Gradient(colors: [Color("ColorBlueOcean"), Color("ColorBlueRoyal")])
                )
                
                BodyFishDetailsView(fishData: fishData)
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueOcean"),
                    museumPhrase: fishData.museumPhrase,
                    foregroundMuseumPhrase: Color("ColorBlueRoyal")
                )
                .padding([.horizontal, .top])
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("ColorSand"))
    }
}

struct FishDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FishDetailsView(fishData: fishes[40])
    }
}
