//
//  MainView.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 24/01/2024.
//

import SwiftUI

struct MainView: View {
    //property
    var gridColumn: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    @StateObject var vm = DataViewModel()
    
    //body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: gridColumn){
                    ForEach( vm.Pokemons){ item in
                        ItemCardView(pokemon: item)
                          
                    }
                }
            }.navigationTitle("Pokemon")
        }
    }
}

#Preview {
    MainView()
}
