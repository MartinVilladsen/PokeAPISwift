//
//  Pokemon.swift
//  PokiAPI
//
//  Created by Natasja Knak Villadsen on 18/09/2024.
//

import Foundation

struct Pokemon : Codable {
    let name : String
    let sprites : sprites
    
    struct sprites : Codable {
        let front_default : URL
    }
}
