//
//  TabView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(named: "ColorSand")
        UITabBar.appearance().unselectedItemTintColor = .black
    }
    
    var body: some View {
        TabView {
            FishesMainView(fishesViewModel: FishViewModel())
                .tabItem {
                    Image("Fish")
                        .imageScale(.large)
                    Text("Fish")
                }
            
            SeaCreaturesMainView(seaCreaturesViewModel: SeaCreatureViewModel())
                .tabItem {
                    Image("SeaCreature")
                        .imageScale(.small)
                    Text("Sea")
                }
            
            BugsMainView(bugViewModel: BugViewModel())
                .tabItem {
                    Image("Butterfly")
                        .imageScale(.small)
                    Text("Bug")
                }
            
            FossilsMainView(fossilViewModel: FossilViewModel())
                .tabItem {
                    Image("Fossil")
                        .imageScale(.small)
                    Text("Fossil")
                }
            
            CreatureSelectionMainView()
                .tabItem {
                    Image(systemName: "text.book.closed")
                        .imageScale(.small)
                    Text("Critterpedia")
                }
        }
        .accentColor(.white)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewLayout(.sizeThatFits)
    }
}
