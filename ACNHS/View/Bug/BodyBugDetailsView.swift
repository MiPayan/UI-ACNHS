//
//  BodyBugDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 13/05/2022.
//

import SwiftUI

struct BodyBugDetailsView: View {
    let bugData: BugData
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(bugData.fileName.replacedCharacter("_", by: " ").capitalized)
                .foregroundColor(Color("ColorGreenGrass"))
                .font(.custom("FinkHeavy", size: 35))
            
            Text("\" \(bugData.catchPhrase) \"")
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
