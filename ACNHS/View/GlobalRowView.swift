//
//  GlobalRowView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct GlobalRowView: View {
    @State var image: String
    @State var fileName: String
    @State var backgroundColor: Color
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(uiImage: image.loadImage())
                .resizable()
                .scaledToFit()
                .shadow(color: .black, radius: 4, x: -8, y: 8)
                .padding()
            
            Text(fileName.replacedCharacter("_", by: " ").capitalized)
                .font(.custom("FinkHeavy", size: 22))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(minHeight: 270)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}


struct GlobalRowView_Previews: PreviewProvider {
    static var previews: some View {
        GlobalRowView(
            image: "https://acnhapi.com/v1/icons/fish/1",
            fileName: "Price",
            backgroundColor: Color("ColorBlueRoyal")
        )
        .previewLayout(.sizeThatFits)
    }
}
