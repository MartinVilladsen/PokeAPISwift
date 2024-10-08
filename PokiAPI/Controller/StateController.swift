//
//  StateController.swift
//  PokiAPI
//
//  Created by Natasja Knak Villadsen on 18/09/2024.
//

import Foundation
@Observable
class StateController {
    var character : Pokemon?
    
    init() {
        fetchPokemon(from: "charmander")
    }
    
    func fetchPokemon(from pokemonName: String) {
        Task(priority: .low) {
            guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(pokemonName)") else {return}
            guard let rawData = await NetworkService.getData(from: url) else {return}
            let decoder = JSONDecoder()
            do {
                let jsonResult = try decoder.decode(Pokemon.self, from: rawData)
                print("Result: \(jsonResult)")
                Task {@MainActor in
                    self.character = jsonResult
                }
            } catch {
                fatalError("Patrick.")
            }
        }
    }
    
    
}

