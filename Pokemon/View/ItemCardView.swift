//
//  ItemCardView.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 25/01/2024.
//

import SwiftUI
import Kingfisher
struct ItemCardView: View {
    let pokemon: Pokemon
    var body: some View {
        HStack{
            VStack{
                Text(pokemon.name)
                    .font(.system(size: 15, weight: .medium, design: .serif))
                Text(pokemon.type)
                    .font(.system(size: 20, weight: .semibold, design: .serif))
                    .background(.blue.opacity(0.5))
                    .cornerRadius(25)
            }
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .frame(width: 70, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .scaledToFill()
                .padding(.trailing)
        } .padding()
          .background(.cyan.opacity(0.8))
          .cornerRadius(12)
    }
}

//#Preview {
//    ItemCardView()
//}
