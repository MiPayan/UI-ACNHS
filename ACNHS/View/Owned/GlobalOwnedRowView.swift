//
//  GlobalOwnedRowView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

struct GlobalOwnedRowView: View {
    
    @State var image: String
    @State var backgroundColor: Color
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 4, x: -8, y: 8)
                    .padding()
            } placeholder: {
                Image(systemName: "fish")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .background(backgroundColor)
        .cornerRadius(13)
    }
}

struct GlobalOwnedRowView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalOwnedRowView(
            image: "https://acnhapi.com/v1/icons/fish/1",
            backgroundColor: Color("ColorBlueRoyal")
        )
        .previewLayout(.sizeThatFits)
    }
}
