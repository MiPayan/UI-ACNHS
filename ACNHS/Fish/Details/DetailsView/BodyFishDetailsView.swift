//
//  BodyFishViewDetails.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 11/05/2022.
//

import SwiftUI

struct BodyFishDetailsView: View {
    
    let bodyFishDetailsViewModel: BodyFishDetailsViewModel
    let fishDetailsGridViewModel: FishDetailsGridViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bodyFishDetailsViewModel.fileName)
                .foregroundColor(Color("ColorBlueOcean"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text(bodyFishDetailsViewModel.catchPhrase)
                .foregroundColor(Color("ColorBlueRoyal"))
                .font(.custom("FinkHeavy", size: 18))
                .padding(.horizontal)
            
            FishDetailsGridView(fishDetailsGridViewModel: fishDetailsGridViewModel)
        }
        .padding()
    }
}
//
//struct BodyFishDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        BodyFishDetailsView(fishDetailsViewModel: FishDetailsViewModel(fish: fishes[0]))
//            .previewLayout(.sizeThatFits)
//    }
//}
