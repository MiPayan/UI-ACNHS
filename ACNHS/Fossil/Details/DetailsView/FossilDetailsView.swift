//
//  FossilDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct FossilDetailsView: View {
    
    let fossilDetailsViewModel: FossilDetailsViewModel
    let bodyFossilDetailsViewModel: BodyFossilDetailsViewModel
    let fossilDetailsGridViewModel: FossilDetailsGridViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: fossilDetailsViewModel.imageUri,
                    backgroundColor: Gradient(colors: [.brown, Color("ColorBrownHeart")])
                )
                
                BodyFossilDetailsView(
                    bodyFossilDetailsViewModel: bodyFossilDetailsViewModel,
                    fossilDetailsGridViewModel: fossilDetailsGridViewModel
                )
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: .brown,
                    museumPhrase: fossilDetailsViewModel.museumPhrase,
                    foregroundMuseumPhrase: Color("ColorBrownHeart")
                )
                .padding([.horizontal, .top])
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("ColorSand"))
    }
}

struct FossilDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FossilDetailsView(
            fossilDetailsViewModel: FossilDetailsViewModel(fossil: fossils[0]),
            bodyFossilDetailsViewModel: BodyFossilDetailsViewModel(fossil: fossils[0]),
            fossilDetailsGridViewModel: FossilDetailsGridViewModel(fossil: fossils[0])
        )
    }
}
