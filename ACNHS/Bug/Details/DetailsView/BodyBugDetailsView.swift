//
//  BodyBugDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodyBugDetailsView: View {
    
    let bodyBugDetailsViewModel: BodyBugDetailsViewModel
    let bugDetailsGridViewModel: BugDetailsGridViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bodyBugDetailsViewModel.fileName)
                .foregroundColor(Color("ColorGreenGrass"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text(bodyBugDetailsViewModel.catchPhrase)
                .foregroundColor(Color("ColorGreenDark"))
                .font(.custom("FinkHeavy", size: 18))
                .padding([.horizontal])
            
            BugDetailsGridView(bugDetailsGridViewModel: bugDetailsGridViewModel)
                .padding([.horizontal, .top])
        }
    }
}

struct BodyBugDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BodyBugDetailsView(
            bodyBugDetailsViewModel: BodyBugDetailsViewModel(bug: bugs[0]),
            bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bugs[0])
        )
            .previewLayout(.sizeThatFits)
    }
}
