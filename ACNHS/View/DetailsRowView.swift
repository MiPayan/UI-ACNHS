//
//  DetailRowView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 09/05/2022.
//

import SwiftUI

struct DetailsRowView: View {
    
    @State var image: String
    @State var title: String
    @State var value: String
    @State var subTitleForegroundColor: Color
    @State var valueForegroundColor: Color
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFit()
                .background(Color("ColorSandLight"))
                .cornerRadius(13)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .foregroundColor(subTitleForegroundColor)
                    .font(.custom("FinkHeavy", size: 15 ))
                
                Text(String(value))
                    .foregroundColor(valueForegroundColor)
                    .font(.custom("FinkHeavy", size: 18))
            }
        }
        .frame(minWidth: 170, maxHeight: 60, alignment: .leading)
    }
}

struct DetailsRowView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsRowView(
            image: "Bells",
            title: "Price :",
            value: "900",
            subTitleForegroundColor: Color("ColorBlueRoyal"),
            valueForegroundColor: Color("ColorBlueOcean")
        )
        .previewLayout(.sizeThatFits)
    }
}
