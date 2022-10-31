//
//  AllBugsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/06/2022.
//

import SwiftUI

struct AllBugsView: View {
    
    @StateObject private var bugViewModel: BugViewModel
    
    init(bugViewModel: BugViewModel) {
        _bugViewModel = StateObject(wrappedValue: bugViewModel)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("all_bugs")
                .font(.custom("FinkHeavy", size: 26))
                .foregroundColor(.white)
                .padding([.top,.horizontal])
            
            BugLazyVGridView(bugsData: bugViewModel.bugs)
        }
    }
}
