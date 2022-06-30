//
//  AllBugsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/06/2022.
//

import SwiftUI

struct AllBugsView: View {
    @StateObject private var bugViewModel: BugViewModel
    private let gridSetting = GridSetting()
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("All bugs :")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            LazyVGrid(columns: gridSetting.gridLayout) {
                ForEach(bugViewModel.bugs) { bug in
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
