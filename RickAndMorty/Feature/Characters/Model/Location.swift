//
//  Location.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

// MARK: - Location
struct Location: Codable {
    let name: String
    let url: String
}

extension Location {
    
    static let dummyLoc:[Location] = [
        Location(name: "Immortality Field Resort", url: "https://rickandmortyapi.com/api/location/7"),
        Location(name: "Anfield", url: "https://rickandmortyapi.com/api/location/6"),
        Location(name: "Etihad", url: "https://rickandmortyapi.com/api/location/5"),
        Location(name: "Crypto", url: "https://rickandmortyapi.com/api/location/5"),
    ]
    
}
