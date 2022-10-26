//
//  BugDetailsView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 12/05/2022.
//

import SwiftUI

struct BugDetailsView: View {
    
    let budDetailsViewModel: BugDetailsViewModel
    let bodyBugDetailsViewModel: BodyBugDetailsViewModel
    let bugDetailsGridViewModel: BugDetailsGridViewModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                HeaderDetailsView(
                    image: budDetailsViewModel.iconUri,
                    backgroundColor: Gradient(colors: [Color("ColorGreenGrass"), Color("ColorGreenDark")])
                )
                
                BodyBugDetailsView(
                    bodyBugDetailsViewModel: bodyBugDetailsViewModel,
                    bugDetailsGridViewModel: bugDetailsGridViewModel
                )
                    .padding()
                
                FooterDetailsView(
                    foregroundTitle: Color("ColorGreenGrass"),
                    museumPhrase: budDetailsViewModel.museumPhrase,
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
        BugDetailsView(
            budDetailsViewModel: BugDetailsViewModel(bug: bugs[0]),
            bodyBugDetailsViewModel: BodyBugDetailsViewModel(bug: bugs[0]),
            bugDetailsGridViewModel: BugDetailsGridViewModel(bug: bugs[0])
        )
    }
}
