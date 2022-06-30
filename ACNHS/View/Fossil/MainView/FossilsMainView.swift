//
//  FossilsMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FossilsMainView: View {
    private let gridSetting = GridSetting()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridSetting.gridLayout) {
                    ForEach(fossils) { fossil in
                        NavigationLink(destination: FossilDetailsView(fossilData: fossil)) {
                            RowMainView(
                                image: fossil.imageURI,
                                fileName: fossil.fileName,
                                price: fossil.price,
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
        FossilsMainView()
    }
}
