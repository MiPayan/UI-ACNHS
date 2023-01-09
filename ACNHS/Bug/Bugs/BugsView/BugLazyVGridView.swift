//
//  BugLazyVGridView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 27/10/2022.
//

import SwiftUI

struct BugLazyVGridView: View {
    
    let bugsData: [BugData]
    
    var body: some View {
        LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
            ForEach(bugsData) { bug in
                NavigationLink(
                    destination: BugDetailsView(
                        budDetailsViewModel: BugDetailsViewModel(bug: bug),
                        bodyBugDetailsViewModel: BodyBugDetailsViewModel(bug: bug),
                        bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bug)
                    )
                ) {
                    ItemMainView(
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
