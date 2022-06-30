//
//  OwnedFossilView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 23/06/2022.
//

import SwiftUI

struct OwnedFossilView: View {
    @StateObject private var fossilModelView: FossilViewModel
    private let gridSetting = GridSetting()
    
    init(fossilModelView: FossilViewModel) {
        _fossilModelView = StateObject(wrappedValue: fossilModelView)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridSetting.ownedGridLayout) {
                ForEach(fossilModelView.fossils) { fossil in
                    NavigationLink(destination: FossilDetailsView(fossilData: fossil)) {
                        GlobalOwnedRowView(
                            image: fossil.imageURI,
                            backgroundColor: Color("ColorBrownHeart")
                        )
                    }
                }
            }
            .padding()
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("ColorSand"), Color("ColorSandLight")]),
                startPoint: .bottom,
                endPoint: .top
            )
        )
        .onAppear {
            fossilModelView.getFossilData()
        }
    }
}

struct OwnedFossilView_Previews: PreviewProvider {
    static var previews: some View {
        OwnedFossilView(fossilModelView: FossilViewModel())
    }
}
