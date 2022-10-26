//
//  FooterDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct FooterDetailsView: View {
    
    @State var foregroundTitle: Color
    @State var museumPhrase: String
    @State var foregroundMuseumPhrase: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Museum phrase :")
                .foregroundColor(foregroundTitle)
                .font(.custom("FinkHeavy", size: 35))
            
            Text(museumPhrase)
                .foregroundColor(foregroundMuseumPhrase)
                .font(.custom("FinkHeavy", size: 18))
                .padding()
        }
        .padding([.horizontal, .top])
    }
}

struct FooterDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FooterDetailsView(
            foregroundTitle: Color("ColorBlueOcean"),
            museumPhrase: "Once upon a time...",
            foregroundMuseumPhrase: Color("ColorBlueRoyal")
        )
        .previewLayout(.sizeThatFits)
    }
}
