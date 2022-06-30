//
//  BodyFossilDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodyFossilDetailsView: View {
    let fossilData: FossilData
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(fossilData.fileName.replacedCharacter("_", by: " ").capitalized)
                .foregroundColor(.brown)
                .font(.custom("FinkHeavy", size: 35))
            
            FossilDetailsGridView(fossilData: fossilData)
                .padding([.horizontal, .top])
        }
    }
}

struct BodyFossilDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodyFossilDetailsView(fossilData: fossils[0])
            .previewLayout(.sizeThatFits)
    }
}
