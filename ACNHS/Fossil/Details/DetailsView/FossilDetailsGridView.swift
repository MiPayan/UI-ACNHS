//
//  FossilDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct FossilDetailsGridView: View {
    
    let fossilDetailsGridViewModel: FossilDetailsGridViewModel
    
    var body: some View {
        DetailsRowView(
            image: "Bells",
            title: "price",
            value: fossilDetailsGridViewModel.price,
            subTitleForegroundColor: Color("ColorBrownHeart"),
            valueForegroundColor: .brown
        )
    }
}

struct FossilDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        FossilDetailsGridView(fossilDetailsGridViewModel: FossilDetailsGridViewModel(fossil: fossils[0]))
    }
}
