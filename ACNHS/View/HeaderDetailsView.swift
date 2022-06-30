//
//  HeaderView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct HeaderDetailsView: View {
    @State var image: String
    @State var backgroundColor: Gradient
    @State var isAnimating = false
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: backgroundColor,
                startPoint: .topLeading,
                endPoint: .bottomLeading
            )
            
            Image(uiImage: image.loadImage())
                .resizable()
                .frame(width: 230, height: 230, alignment: .center)
                .shadow(color: .black, radius: 4, x: -8, y: 8)
                .offset(y: isAnimating ? 20 : -20)
                .animation(Animation
                    .easeOut(duration: 4)
                    .repeatForever(),
                           value: isAnimating
                )
        }
        .frame(height: 400)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailsView(
            image: "https://acnhapi.com/v1/icons/fish/1",
            backgroundColor: Gradient(colors: [Color("ColorBlueOcean"), Color("ColorBlueRoyal")])
        )
        .previewLayout(.sizeThatFits)
    }
}
