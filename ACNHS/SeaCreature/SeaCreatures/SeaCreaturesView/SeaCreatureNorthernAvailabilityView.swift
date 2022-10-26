//
//  SeaCreatureNorthernAvailabilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 07/06/2022.
//

import SwiftUI

struct SeaCreatureNorthernAvailabilityView: View {
    
    @StateObject private var seaCreaturesViewModel: SeaCreatureViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    
    init(seaCreaturesViewModel: SeaCreatureViewModel) {
        _seaCreaturesViewModel = StateObject(wrappedValue: seaCreaturesViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("currently_available")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            HStack(spacing: 0) {
                Text("northern_hemisphere_parenthese")
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
                ForEach(seaCreaturesViewModel.makeSeaCreatureFromTheNorthernHemisphere()) { seaCreature in
                    NavigationLink(
                        destination: SeaCreatureDetailsView(
                            seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel(seaCreature: seaCreature),
                            bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel(seaCreature: seaCreature),
                            seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel(seaCreature: seaCreature)
                        )
                    ) {
                        RowMainView(
                            fileName: seaCreature.fileName,
                            image: seaCreature.iconURI,
                            price: seaCreature.price,
                            backgroundColor: Color("ColorBlueNightLite")
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
        SeaCreatureNorthernAvailabilityView(seaCreaturesViewModel: SeaCreatureViewModel())
    }
}
