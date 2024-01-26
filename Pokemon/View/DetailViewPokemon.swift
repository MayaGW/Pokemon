//
//  DetailViewPokemon.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 26/01/2024.
//

import SwiftUI
import Kingfisher
struct DetailViewPokemon: View {
    @StateObject var vm =  DataViewModel()
    let pokemon: Pokemon
    var body: some View {
        ZStack{
            Color(uiColor: vm.getColorFromType(type: pokemon.type))
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                KFImage(URL(string: String(pokemon.imageUrl)))
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Text(pokemon.name)
                    .font(.system(size: 25, weight: .semibold, design: .serif))
                Text(pokemon.type)
                 .font(.system(size: 20, weight: .bold, design: .serif))
                 .padding()
                 .background(Color(uiColor: vm.getColorFromType(type: "poison")))
                 .cornerRadius(20)
                
                Text(pokemon.description)
                    .font(.callout)
                    .padding()
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                 Text("Status:")
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                    .foregroundColor(Color(uiColor: vm.getColorFromType(type: pokemon.type)))
                    .padding()
                    .frame(width: UIScreen.main.bounds.width,  alignment: .leading)
                HStack{
                    Text("Height:")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .padding(.leading,30)
                    
                    Text("\(pokemon.height)")
                        .font(.system(size:20, weight: .bold, design: .serif))
                   
                    Spacer()
                    ProgressView(value: 10, total: 100)
                        .padding()
                        .accentColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .frame(width: UIScreen.main.bounds.width/2.2, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/, y: 1.8, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,30)
                }
                
                HStack{
                    Text("Attack:")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .padding(.leading,30)
                    Text("10")
                        .font(.system(size:20, weight: .bold, design: .serif))
                   
                    Spacer()
                    ProgressView(value: 10, total: 100)
                       
                        .accentColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .frame(width: UIScreen.main.bounds.width/2.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/, y: 1.8, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,30)
                }.padding(.vertical,15)
                HStack{
                    Text("Defence:")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .padding(.leading,30)
                    Text("10")
                        .font(.system(size:20, weight: .bold, design: .serif))
                   
                    Spacer()
                    ProgressView(value: 10, total: 100)
                       
                        .accentColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .frame(width: UIScreen.main.bounds.width/2.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/, y: 1.8, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,30)
                }.padding(.vertical,15)      
                HStack{
                    Text("Weight:")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .padding(.leading,30)
                    Text("10")
                        .font(.system(size:20, weight: .bold, design: .serif))
                   
                    Spacer()
                    ProgressView(value: 10, total: 100)
                       
                        .accentColor(Color(uiColor: vm.getColorFromType(type: "poison")))
                        .frame(width: UIScreen.main.bounds.width/2.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(x: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/, y: 1.8, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.trailing,30)
                }.padding(.vertical,15)
                
                
                //Spacer()
            }.frame(width: UIScreen.main.bounds.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.white.offset(x: 0, y: 100))
                .cornerRadius(25)
        }
    }
}

 
