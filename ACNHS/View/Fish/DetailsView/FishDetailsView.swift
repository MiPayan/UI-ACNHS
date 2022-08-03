//
//  FishDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 06/05/2022.
//

import SwiftUI

struct FishDetailsView: View {
    
    private let fishViewModel = FishViewModel()
    let fishData: FishData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderDetailsView(
                    image: fishViewModel.getIconUri(fish: fishData),
                    backgroundColor: Gradient(colors: [Color("ColorBlueOcean"), Color("ColorBlueRoyal")])
                )
                
                BodyFishDetailsView(fishData: fishData)
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueOcean"),
                    museumPhrase: fishViewModel.getMuseumPhrase(fish: fishData),
                    foregroundMuseumPhrase: Color("ColorBlueRoyal")
                )
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
