//
//  OwnedBugView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

struct OwnedBugView: View {
    @StateObject private var bugViewModel: BugViewModel
    private let gridSetting = GridSetting()
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridSetting.ownedGridLayout) {
                ForEach(bugViewModel.bugs) { bug in
                    NavigationLink(destination: BugDetailsView(bugsData: bug)) {
                        GlobalOwnedRowView(
                            image: bug.iconURI,
                            backgroundColor: Color("ColorGreenDark")
                        )
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: [Color("ColorSand"),
                             Color("ColorSandLight")
                            ]
                ),
                startPoint: .bottom,
                endPoint: .top
            )
        )
        .onAppear {
            bugViewModel.getBugData()
        }
    }
}

struct OwnedBugView_Previews: PreviewProvider {
    static var previews: some View {
        OwnedBugView(bugViewModel: BugViewModel())
    }
}
