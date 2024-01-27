//
//  MainView.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 24/01/2024.
//

import SwiftUI

struct MainView: View {
    //property
    @State var isFilterApplied = false
    var gridColumn: [GridItem] = [GridItem(.flexible()),GridItem(.flexible())]
    @StateObject var vm = DataViewModel()
    @State var filterByType: String = ""
    
    //body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                LazyVGrid(columns: gridColumn){
                    ForEach( vm.Pokemons){ item in
                        if filterByType != ""{
                            if item.type == filterByType{
                                NavigationLink {
                                    DetailViewPokemon(pokemon: item)
                                } label: {
                                    ItemCardView(pokemon: item)
                                        .padding(3)
                                }

                          
                            }}
                        else{
                            NavigationLink {
                                DetailViewPokemon(pokemon: item)
                            } label: {
                                ItemCardView(pokemon: item)
                                    .padding(3)
                            }

                        }
                    }
                }
            }.navigationTitle("Pokemon")
                .overlay(filterOverlay
                   ,alignment: .bottomTrailing)
                .foregroundColor(.white)
        }
    }
}
extension MainView{
    var   filterOverlay: some View{
        VStack{
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height:25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color(uiColor: vm.getColorFromType(type: "fire")).shadow(color: .black, radius: 30, x: 0, y: 0))
                .cornerRadius(50)
                .padding(.trailing)
                .opacity(isFilterApplied ? 1 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.6)){
                        filterByType = "fire"}
                }
            Image(systemName: "drop.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height:25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color(uiColor: vm.getColorFromType(type: "water")).shadow(color: .black, radius: 30, x: 0, y: 0))
                .cornerRadius(50)
                .padding(.trailing)
                .opacity(isFilterApplied ? 1 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.6)){
                        filterByType = "water"
                    }
                }
            Image(systemName: "bolt.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height:25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color(uiColor: vm.getColorFromType(type: "electric")).shadow(color: .black, radius: 30, x: 0, y: 0))
                .cornerRadius(50)
                .padding(.trailing)
                .opacity(isFilterApplied ? 1 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.6)){
                        filterByType = "electric"}
                }
            Image(systemName: "leaf.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height:25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color(uiColor: vm.getColorFromType(type: "poison")).shadow(color: .black, radius: 30, x: 0, y: 0))
                .cornerRadius(50)
                .padding(.trailing)
                .opacity(isFilterApplied ? 1 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.6)){
                        filterByType = "poison"}
                }
            Image(systemName: filterByType == "" ? "line.3.horizontal.decrease" : "arrow.circlepath")
                .resizable()
                .scaledToFill()
                .frame(width: 25, height:25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(30)
                .background(Color.cyan.shadow(color: .black, radius: 30, x: 0, y: 0))
                .cornerRadius(50)
                .rotationEffect(Angle(degrees: isFilterApplied ? 180 : 0))
                .padding(.trailing)
            
                .onTapGesture {
                    filterByType = ""
                    withAnimation(.easeInOut(duration: 0.6)){
                        isFilterApplied.toggle()
                    }
                }
            
        }}
}
#Preview {
    MainView()
}
