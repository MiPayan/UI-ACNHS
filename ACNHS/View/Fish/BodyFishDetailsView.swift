//
//  BodyFishViewDetails.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 11/05/2022.
//

import SwiftUI

struct BodyFishDetailsView: View {
    let fishData: FishData
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(fishData.fileName.replacedCharacter("_", by: " ").capitalized)
                .foregroundColor(Color("ColorBlueOcean"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text("\" \(fishData.catchPhrase) \"")
                .foregroundColor(Color("ColorBlueRoyal"))
                .font(.custom("FinkHeavy", size: 18))
                .padding([.horizontal])
            
            FishDetailsGridView(fishData: fishData)
                .padding([.horizontal, .top])
        }
    }
}

struct BodyFishDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodyFishDetailsView(fishData: fishes[0])
            .previewLayout(.sizeThatFits)
    }
}
