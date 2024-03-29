//
//  ItemMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct ItemMainView: View {
    
    @State var fileName: String
    @State var image: String
    @State var price: Int
    @State var backgroundColor: Color
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(fileName.replaceCharacter("_", by: " ").capitalized)
                .font(.custom("FinkHeavy", size: 15))
                .foregroundColor(.white)
                .frame(height: 40)
                .padding(.horizontal, 4)
            
            AsyncImage(url: URL(string: image)) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black, radius: 4, x: -8, y: 8)
                    .padding()
            } placeholder: { }
            
            HStack(spacing: 4) {
                Text(String(price))
                    .foregroundColor(.white)
                    .font(.custom("FinkHeavy", size: 15))
                Image("Bells")
                    .resizable()
                    .frame(width: 20, height: 20, alignment: .center)
                    .offset(y: -2)
            }
        }
        .frame(minHeight: 200)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}


struct ItemMainView_Previews: PreviewProvider {
    static var previews: some View {
        ItemMainView(
            fileName: "Fish name",
            image: "https://acnhapi.com/v1/icons/fish/1",
            price: 900,
            backgroundColor: Color("ColorBlueRoyal")
        )
        .frame(width: 120)
        .previewLayout(.sizeThatFits)
    }
}
