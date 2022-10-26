//
//  OwnedBugView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 20/05/2022.
//

import SwiftUI

struct OwnedBugView: View {
    
    @StateObject private var bugViewModel: BugViewModel
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 4)) {
                ForEach(bugViewModel.bugs) { bug in
                    NavigationLink(
                        destination: BugDetailsView(
                            budDetailsViewModel: BugDetailsViewModel(bug: bug),
                            bodyBugDetailsViewModel: BodyBugDetailsViewModel(bug: bug),
                            bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bug)
                        )
                    ) {
                        GlobalOwnedRowView(image: bug.iconURI, backgroundColor: Color("ColorGreenDark"))
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorSand"),Color("ColorSandLight")]),
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
