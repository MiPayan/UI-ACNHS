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
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("currently_available")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            HStack(spacing: 0) {
                Text("southern_hemisphere_parenthese")
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
            
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                ForEach(bugViewModel.makeBugFromTheSouthernHemisphere()) { bug in
                    NavigationLink(
                        destination: BugDetailsView(
                            budDetailsViewModel: BugDetailsViewModel(bug: bug),
                            bodyBugDetailsViewModel: BodyBugDetailsViewModel(bug: bug),
                            bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bug)
                        )
                    ) {
                        RowMainView(
                            fileName: bug.fileName,
                            image: bug.iconURI,
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
