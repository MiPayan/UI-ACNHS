//
//  BugsMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct BugsMainView: View {
    
    @StateObject private var bugViewModel: BugViewModel
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        NavigationView {
            switch bugViewModel.state {
            case .success:
                ScrollView {
                    if bugViewModel.isOnBoarding {
                        BugNorthernAvailabilityView(bugViewModel: bugViewModel)
                    } else {
                        BugSouthernAvailabilityView(bugViewModel: bugViewModel)
                    }
                    AllBugsView(bugViewModel: bugViewModel)
                }
                .background(
                    LinearGradient(
                        gradient:
                            Gradient(colors: [Color("ColorBlack"), Color("ColorGreenDark"), Color("ColorGreenGrass")]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .navigationBarHidden(true)
            case .loading:
                LoadingView()
            case .error:
                ErrorView()
            }
        }
        .onAppear {
            bugViewModel.getBugData()
        }
    }
}

struct BugsGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        BugsMainView(bugViewModel: BugViewModel())
    }
}
