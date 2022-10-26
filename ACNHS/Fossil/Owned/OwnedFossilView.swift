//
//  OwnedFossilView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 23/06/2022.
//

import SwiftUI

struct OwnedFossilView: View {
    
    @StateObject private var fossilModelView: FossilViewModel
    
    init(fossilModelView: FossilViewModel) {
        _fossilModelView = StateObject(wrappedValue: fossilModelView)
    }
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 4)) {
                ForEach(fossilModelView.fossils) { fossil in
                    NavigationLink(
                        destination: FossilDetailsView(
                            fossilDetailsViewModel: FossilDetailsViewModel(fossil: fossil),
                            bodyFossilDetailsViewModel: BodyFossilDetailsViewModel(fossil: fossil),
                            fossilDetailsGridViewModel: FossilDetailsGridViewModel(fossil: fossil)
                        )
                    ) {
                        GlobalOwnedRowView(image: fossil.imageURI, backgroundColor: Color("ColorBrownHeart"))
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
