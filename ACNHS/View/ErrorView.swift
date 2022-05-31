//
//  ErrorView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 19/05/2022.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack() {
            Image("Error")
                .resizable()
                .scaledToFit()
                .background(Color("ColorYellow"))
            Text("We have a problem.\nWe're trying to fix it as quickly as possible. ")
                .font(.custom("FinkHeavy", size: 20))
                .foregroundColor(Color("ColorPink"))
                .multilineTextAlignment(.center)
            Button(action: {
                
            }) {
                ZStack {
                    Rectangle()
                        .frame(height: 47, alignment: .center)
                        .foregroundColor(Color("ColorYellow"))
                        .cornerRadius(13)
                        .padding(.horizontal)
                    Text("Refresh")
                        .font(.custom("FinkHeavy", size: 26))
                        .foregroundColor(Color("ColorBrown"))
                        .offset(y: 4)
                }
            }
            
            Text("( Remember to activate your cellular data )")
                .font(.custom("FinkHeavy", size: 15))
                .foregroundColor(Color("ColorPink"))
                .multilineTextAlignment(.center)
                .padding([.horizontal, .bottom])
        }
        .background(Color("ColorBeige"))
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
            .cornerRadius(13)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
