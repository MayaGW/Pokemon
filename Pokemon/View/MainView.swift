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
    
    //body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: gridColumn){
                    ForEach( 0..<20){ item in
                        ItemCardView()
                          
                    }
                }
            }.navigationTitle("Pokemon")
        }
    }
}

#Preview {
    MainView()
}
