//
//  ButtonSelectionBar.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 08/06/2022.
//

import SwiftUI

struct CreatureItemView: View {
    
    var imageBackground: String
    var creatureTitle: String
    var image: String
    @AppStorage("CreatureSelected") private var isSelected = false
    
    var body: some View {
        ZStack {
            Image(imageBackground)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
            
            VStack {
                Spacer()
                
                Text(creatureTitle)
                    .foregroundColor(.black)
                    .font(.custom("FinkHeavy", size: 20))
                    .padding()
                
                Spacer()
                
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.black)
                    .padding()
                
                Spacer()
                
                Text("0/100")
                    .foregroundColor(.black)
                    .font(.custom("FinkHeavy", size: 18))
                    .padding()
                
                Spacer()
            }
        }
        .cornerRadius(13)
    }
}

struct ButtonSelectionBar_Previews: PreviewProvider {
    static var previews: some View {
        CreatureItemView(imageBackground: "Beach", creatureTitle: "Fish", image: "Fish")
            .previewLayout(.sizeThatFits)
    }
}
