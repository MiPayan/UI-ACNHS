//
//  FossilDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct FossilDetailsView: View {
    
    private let fossilViewModel = FossilViewModel()
    let fossilData: FossilData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: fossilViewModel.getImageUri(fossil: fossilData),
                    backgroundColor: Gradient(colors: [.brown, Color("ColorBrownHeart")])
                )
                
                BodyFossilDetailsView(fossilData: fossilData)
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: .brown,
                    museumPhrase: fossilViewModel.getMuseumPhrase(fossil: fossilData),
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
        FossilDetailsView(fossilData: fossils[0])
    }
}
