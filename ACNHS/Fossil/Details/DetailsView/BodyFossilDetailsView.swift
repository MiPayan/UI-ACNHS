//
//  BodyFossilDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodyFossilDetailsView: View {
    
    let bodyFossilDetailsViewModel: BodyFossilDetailsViewModel
    let fossilDetailsGridViewModel: FossilDetailsGridViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bodyFossilDetailsViewModel.fileName)
                .foregroundColor(.brown)
                .font(.custom("FinkHeavy", size: 35))
            
            FossilDetailsGridView(fossilDetailsGridViewModel: fossilDetailsGridViewModel)
                .padding([.horizontal, .top])
        }
    }
}

struct BodyFossilDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodyFossilDetailsView(
            bodyFossilDetailsViewModel: BodyFossilDetailsViewModel(fossil: fossils[0]),
            fossilDetailsGridViewModel: FossilDetailsGridViewModel(fossil: fossils[0])
        )
        .previewLayout(.sizeThatFits)
    }
}
