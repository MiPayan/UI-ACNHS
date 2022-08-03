//
//  FossilDetailsGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct FossilDetailsGridView: View {
    
    private let fossilViewModel = FossilViewModel()
    let fossilData: FossilData
    
    var body: some View {
        DetailsRowView(
            image: "Bells",
            title: "Price :",
            value: fossilViewModel.getPrice(fossil: fossilData),
            subTitleForegroundColor: Color("ColorBrownHeart"),
            valueForegroundColor: .brown
        )
    }
}

struct FossilDetailsGridView_Previews: PreviewProvider {
    static var previews: some View {
        FossilDetailsGridView(fossilData: fossils[0])
    }
}
