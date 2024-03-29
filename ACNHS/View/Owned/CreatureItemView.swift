//
//  ButtonSelectionBar.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 08/06/2022.
//

import SwiftUI

struct CreatureItemView: View {
    
    private(set) var colorBackground: String
    private(set) var creatureTitle: String
    private(set) var image: String
    private(set) var numberCreature: Int
    
    var body: some View {
        ZStack {            
            Color(colorBackground)
            VStack {
                Spacer()
                
                Text(creatureTitle)
                    .foregroundColor(.white)
                    .font(.custom("FinkHeavy", size: 20))
                    .padding()
                
                Spacer()
                
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: .center)
                    .foregroundColor(.white)
                    .padding()
                
                Spacer()
                
                Text("0 / \(String(numberCreature))")
                    .foregroundColor(.white)
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
        CreatureItemView(
            colorBackground: "ColorBlueRoyal",
            creatureTitle: "Fish",
            image: "fish",
            numberCreature: 1
        )
            .previewLayout(.sizeThatFits)
    }
}
