//
//  AllFishesView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 02/06/2022.
//

import SwiftUI

struct AllFishesView: View {
    
    @StateObject private var fishesViewModel: FishViewModel
    
    init(fishesViewModel: FishViewModel) {
        _fishesViewModel = StateObject(wrappedValue: fishesViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("all_fishes")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            FishLazyVGridView(fishesData: fishesViewModel.fishes)
        }
    }
}
