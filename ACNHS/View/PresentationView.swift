//
//  PresentationView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct PresentationView: View {
    
    @State var isAnimating = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("ACNHBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Image("ACNH")
                        .resizable()
                        .scaledToFit()
                        .opacity(isAnimating ? 1 : 0)
                        .offset(y: isAnimating ? 0 : -40)
                        .animation(.easeOut(duration: 1), value: isAnimating)
                    
                    Spacer()
                    
                    NavigationLink {
                        TabBarView()
                    } label: {
                        Text("Appuie ici")
                            .font(.custom("FinkHeavy", size: 26))
                            .foregroundColor(.brown)
                            .opacity(isAnimating ? 1 : 0)
                            .offset(y: isAnimating ? 0 : 40)
                            .animation(.easeOut(duration: 1), value: isAnimating)
                    }
                }
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
}

struct PresentationView_Previews: PreviewProvider {
    static var previews: some View {
        PresentationView()
    }
}
