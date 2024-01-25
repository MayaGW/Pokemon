//
//  DataViewModel.swift
//  Pokemon
//
//  Created by Maya Ghamloush on 25/01/2024.
//

import Foundation
class DataViewModel: ObservableObject{
    @Published var Pokemons: [Pokemon] = []
    init(){
        getPost()
    }
    func getPost(){
        guard let url = URL(string: "https://pokedex-bb36f.firebaseio.com/pokemon.json")
        else{
            print("there is erroor with URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data,response,error in
            guard error == nil else{
                print("Error From completion Handler")
                return
            }
            guard let response = response as? HTTPURLResponse else{
                print("Error From response")
                return
            }
            guard response.statusCode >= 200 && response.statusCode <= 300 else{
                print("Error From statusCode")
                return
            }
            guard let  data = data?.jsonParsing(letters: "null,") else{
                print("Error From data")
                return
            }
            guard let jsonData = try? JSONDecoder().decode([Pokemon].self, from: data)else{
                print("Error From Json")
                return
            }
            DispatchQueue.main.async {
                self.Pokemons = jsonData
                print(self.Pokemons)
            }
           
        }.resume()
    }
}
