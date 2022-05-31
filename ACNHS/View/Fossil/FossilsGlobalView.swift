//
//  FossilsGlobalView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FossilsGlobalView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(fossils) { fossil in
                        NavigationLink(destination: FossilDetailsView(fossilData: fossil)) {
                            GlobalRowView(
                                image: fossil.imageURI,
                                fileName: fossil.fileName,
                                backgroundColor: Color("ColorBrownHeart")
                            )
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorBrownHeart"), Color(uiColor: .brown)]),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .navigationBarHidden(true)
        }
    }
}

struct FossilsGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        FossilsGlobalView()
    }
}
