//
//  FishesGlobalView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FishesGlobalView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridLayout) {
                    ForEach(fishes) { fish in
                        NavigationLink(destination: FishDetailsView(fishData: fish)) {
                            GlobalRowView(
                                image: fish.iconURI,
                                fileName: fish.fileName,
                                backgroundColor: Color("ColorBlueRoyal")
                            )
                        }
                    }
                }
                .padding()
            }
            .background(
                LinearGradient(
                    gradient: Gradient(colors: [Color("ColorBlueRoyal"), Color("ColorBlueOcean")]),
                    startPoint: .bottom,
                    endPoint: .top
                )
            )
            .navigationBarHidden(true)
        }
    }
}

struct FishesGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FishesGlobalView()
        }
    }
}
