//
//  FishDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 06/05/2022.
//

import SwiftUI

struct FishDetailsView: View {
    
    let fishDetailsViewModel: FishDetailsViewModel
    let bodyFishDetailsViewModel: BodyFishDetailsViewModel
    let fishDetailsGridViewModel: FishDetailsGridViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HeaderDetailsView(
                    image: fishDetailsViewModel.iconUri,
                    backgroundColor: Gradient(colors: [Color("ColorBlueOcean"), Color("ColorBlueRoyal")])
                )
                
                BodyFishDetailsView(
                    bodyFishDetailsViewModel: bodyFishDetailsViewModel,
                    fishDetailsGridViewModel: fishDetailsGridViewModel
                )
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorBlueOcean"),
                    museumPhrase: fishDetailsViewModel.museumPhrase,
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
        FishDetailsView(
            fishDetailsViewModel: FishDetailsViewModel(fish: fishes[0]),
            bodyFishDetailsViewModel: BodyFishDetailsViewModel(fish: fishes[0]),
            fishDetailsGridViewModel: FishDetailsGridViewModel(fish: fishes[0])
        )
        .previewLayout(.sizeThatFits)
    }
}
