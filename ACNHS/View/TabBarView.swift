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
        UITabBar.appearance().backgroundColor = UIColor(named: "ColorSand")
        UITabBar.appearance().unselectedItemTintColor = .black
    }
    
    var body: some View {
        TabView {
            FishesMainView(fishesViewModel: FishViewModel())
                .tabItem {
                    Image(systemName: "fish")
                    Text("Fish")
                }
            
            SeaCreaturesMainView(seaCreaturesViewModel: SeaCreatureViewModel())
                .tabItem {
                    Image(systemName: "water.waves")
                    Text("Sea")
                }
            
            BugsMainView(bugViewModel: BugViewModel())
                .tabItem {
                    Image(systemName: "ant")
                    Text("Bug")
                }
            
            FossilsMainView(fossilViewModel: FossilViewModel())
                .tabItem {
                    Image(systemName: "globe.asia.australia")
                    Text("Fossil")
                }
            
            CreatureSelectionMainView(
                fishViewModel: FishViewModel(),
                seaCreatureViewModel: SeaCreatureViewModel(),
                bugViewModel: BugViewModel(),
                fossilViewModel: FossilViewModel()
            )
            .tabItem {
                Image(systemName: "text.book.closed")
                Text("Critterpedia")
            }
        }
        .accentColor(.brown)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .previewLayout(.sizeThatFits)
    }
}
