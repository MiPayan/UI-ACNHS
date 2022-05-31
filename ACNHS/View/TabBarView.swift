//
//  TabView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            FishesGlobalView(fishViewModel: FishViewModel())
                .tabItem {
                    Image(systemName: "drop")
                    Text("Fish")
                }
            
            SeaCreatureGlobalView()
                .tabItem {
                    Image(systemName: "drop")
                    Text("Sea")
                }
            
            BugsGlobalView()
                .tabItem {
                    Image(systemName: "ladybug")
                    Text("Bugs")
                }
            
            FossilsGlobalView()
                .tabItem {
                    Image(systemName: "globe.europe.africa")
                    Text("Fossil")
                }
            
            Villager()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Villager")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewLayout(.sizeThatFits)
    }
}
