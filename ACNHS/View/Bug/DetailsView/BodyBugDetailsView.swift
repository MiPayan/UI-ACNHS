//
//  BodyBugDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodyBugDetailsView: View {
    
    private let bugDataViewModel = BugViewModel()
    let bugData: BugData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bugDataViewModel.getFileName(bug: bugData))
                .foregroundColor(Color("ColorGreenGrass"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text(bugDataViewModel.formatCatchPhrase(bug: bugData))
                .foregroundColor(Color("ColorGreenDark"))
                .font(.custom("FinkHeavy", size: 18))
                .padding([.horizontal])
            
            BugDetailsGridView(bug: bugData)
                .padding([.horizontal, .top])
        }
    }
}

struct BodyBugDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodyBugDetailsView(bugData: bugs[0])
            .previewLayout(.sizeThatFits)
    }
}
