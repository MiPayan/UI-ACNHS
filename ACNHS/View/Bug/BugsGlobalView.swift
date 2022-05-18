//
//  BugsGlobalView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct BugsGlobalView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(bugs) { bugs in
                        NavigationLink(destination: BugDetailsView(bugsData: bugs)) {
                            GlobalRowView(
                                image: bugs.iconURI,
                                fileName: bugs.fileName,
                                backgroundColor: Color("ColorGreenDark")
                            )
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorBlack"), Color("ColorGreenDark"), Color("ColorGreenGrass")]),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .navigationBarHidden(true)
        }
    }
}

struct BugsGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        BugsGlobalView()
    }
}
