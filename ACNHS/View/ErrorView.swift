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
            
            Text("error_text")
                .font(.custom("FinkHeavy", size: 18))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
            
            Button(action: {
                
            }) {
                ZStack {
                    Rectangle()
                        .frame(height: 42, alignment: .center)
                        .foregroundColor(Color("ColorYellow"))
                        .cornerRadius(13)
                        .padding(.horizontal)
                    
                    Text("refresh")
                        .font(.custom("FinkHeavy", size: 26))
                        .foregroundColor(.brown)
                        .offset(y: 4)
                }
            }
            
            Text("remember_text")
                .font(.custom("FinkHeavy", size: 15))
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding([.horizontal, .bottom])
        }
        .background(Color("ColorBeige"))
        .cornerRadius(13)
        .padding(32)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
            .previewLayout(.sizeThatFits)
    }
}
