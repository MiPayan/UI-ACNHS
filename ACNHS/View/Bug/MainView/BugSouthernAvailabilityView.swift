//
//  SouthernAvaibilityView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/06/2022.
//

import SwiftUI

struct BugSouthernAvailabilityView: View {
    @StateObject private var bugViewModel: BugViewModel
    @AppStorage("OnBoarding") private var isOnBoarding = true
    private let gridSetting = GridSetting()
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
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
                        isOnBoarding = true
                    }
                }) {
                    Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                        .foregroundColor(.white)
                }
            }
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(bugViewModel.getTheBugFromTheSouthernEmisphere()) { bug in
                    NavigationLink(destination: BugDetailsView(bugsData: bug)) {
                        RowMainView(
                            image: bug.iconURI,
                            fileName: bug.fileName,
                            price: bug.price,
                            backgroundColor: Color("ColorGreenDark")
                        )
                    }
                }
            }
            .padding()
        }
    }
}
