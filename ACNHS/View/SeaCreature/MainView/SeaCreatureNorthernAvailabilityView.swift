//
//  SeaCreatureNorthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct SeaCreatureNorthernAvailabilityView: View {
    
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    
    init(seaCreatureViewModel: SeaCreatureViewModel) {
        _seaCreatureViewModel = StateObject(wrappedValue: seaCreatureViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Currently available :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            HStack(spacing: 0) {
                Text("(Northern emisphere)")
                    .font(.custom("FinkHeavy", size: 18))
                    .foregroundColor(.white)
                    .padding(.horizontal)
                Button(action: {
                    withAnimation {
                        isOnBoarding = false
                    }
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .foregroundColor(.white)
                }
            }
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(seaCreatureViewModel.getTheSeaCreatureFromTheNorthernEmisphere()) { seaCreature in
                    NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                        RowMainView(
                            fileName: seaCreature.fileName,
                            image: seaCreature.iconURI,
                            price: seaCreature.price,
                            backgroundColor: Color("ColorBlueNightLight")
                        )
                    }
                }
            }
            .padding()
        }
    }
}

struct SeaCreatureNorthernAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureNorthernAvailabilityView(seaCreatureViewModel: SeaCreatureViewModel())
    }
}
