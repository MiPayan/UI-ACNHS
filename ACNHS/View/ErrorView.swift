//
//  ErrorView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 19/05/2022.
//

import SwiftUI

struct ErrorView: View {
    
    private let errorText = "We have a problem.\nWe're trying to fix it as quickly as possible. "
    private let rememberText = "(Remember to activate your cellular data)"
    private let cornerRadius: CGFloat = 13
    
    var body: some View {
        VStack() {
            Image("Error")
                .resizable()
                .scaledToFit()
                .background(Color("ColorYellow"))
            
            Text(errorText)
                .font(.custom("FinkHeavy", size: 20))
                .foregroundColor(Color("ColorPink"))
                .multilineTextAlignment(.center)
            
            Button(action: {
                //                TODO: - Doit réaliser l'action.
            }) {
                
                ZStack {
                    Rectangle()
                        .frame(height: 47, alignment: .center)
                        .foregroundColor(Color("ColorYellow"))
                        .cornerRadius(cornerRadius)
                        .padding(.horizontal)
                    
                    Text("Refresh")
                        .font(.custom("FinkHeavy", size: 26))
                        .foregroundColor(Color("ColorBrown"))
                        .offset(y: 4)
                }
            }
            
            Text(rememberText)
                .font(.custom("FinkHeavy", size: 15))
                .foregroundColor(Color("ColorPink"))
                .multilineTextAlignment(.center)
                .padding([.horizontal, .bottom])
        }
        .background(Color("ColorBeige"))
        .cornerRadius(cornerRadius)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
