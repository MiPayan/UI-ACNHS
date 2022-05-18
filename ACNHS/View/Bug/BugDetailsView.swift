//
//  BugDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct BugDetailsView: View {
    let bugsData: BugData
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: bugsData.iconURI,
                    backgroundColor: Gradient(colors: [Color("ColorGreenGrass"), Color("ColorGreenDark")])
                )
                
                BodyBugDetailsView(bugData: bugsData)
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorGreenGrass"),
                    museumPhrase: bugsData.museumPhrase,
                    foregroundMuseumPhrase: Color("ColorGreenDark")
                )
                .padding([.horizontal, .top])
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color("ColorSand"))
    }
}

struct BugDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BugDetailsView(bugsData: bugs[0])
    }
}
