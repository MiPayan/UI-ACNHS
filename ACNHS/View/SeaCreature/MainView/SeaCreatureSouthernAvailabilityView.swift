//
//  SeaCreatureSouthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct SeaCreatureSouthernAvailabilityView: View {
    @StateObject private var seaCreatureViewModel: SeaCreatureViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    private let gridSetting = GridSetting()
    
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
                Text("(Southern emisphere)")
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
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(seaCreatureViewModel.getTheSeaCreatureFromTheSouthernEmisphere()) { seaCreature in
                    NavigationLink(destination: SeaCreatureDetailsView(seaCreatureData: seaCreature)) {
                        RowMainView(
                            image: seaCreature.iconURI,
                            fileName: seaCreature.fileName,
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

struct SeaCreatureSouthernAvailabilityView_Previews: PreviewProvider {
    static var previews: some View {
        SeaCreatureSouthernAvailabilityView(seaCreatureViewModel: SeaCreatureViewModel())
    }
}
