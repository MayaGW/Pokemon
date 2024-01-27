//
//  ItemCardView.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 25/01/2024.
//

import SwiftUI
import Kingfisher
struct ItemCardView: View {
    @StateObject var vm = DataViewModel()
    let pokemon: Pokemon
    var body: some View {
        HStack{
            VStack{
                Text(pokemon.name)
                    .font(.footnote)
                    .fontWeight(.medium)
                
                
                Text(pokemon.type)
                    .font(.system(size: 13, weight: .semibold, design: .serif))
                    .padding()
                    .background(.white.opacity(0.5))
                    .cornerRadius(25)
                
            }.padding(.horizontal,10)
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70, alignment: .center)
                .padding(.trailing)
        }.foregroundColor(.white)
        .padding(.vertical)
            .background(Color(uiColor: vm.getColorFromType(type: pokemon.type)))
          .cornerRadius(12)
    }
}

//#Preview {
//    ItemCardView()
//}
