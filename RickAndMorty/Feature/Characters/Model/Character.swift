//
//  Character.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

struct CharacterResult: Codable {
    let info: CharacterInfo
    let results: [Character]
}

struct CharacterInfo:Codable {
    let count:Int
    let pages:Int
    let next: String?
    let prev: String?
}

// MARK: - Character
struct Character: Codable {
    let id: Int
    let name : String
    let status : String
    let species : String
    let type: String?
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

extension Character {
    static let origin:Origin = Origin.dummyOrg.randomElement()!
    static let epi:Episode = Episode.dummyData.randomElement()!
    static let location:Location = Location.dummyLoc.randomElement()!
    
    static let dummyChar:[Character] = [
        Character(id: 1,
                  name: "Burn",
                  status: "Dead",
                  species: "Human",
                  type: "",
                  gender: "Male",
                  origin: origin,
                  location: location,
                  image: "https://rickandmortyapi.com/api/character/avatar/21.jpeg",
                  episode: epi.characters,
                  url: "https://rickandmortyapi.com/api/character/21",
                  created: "2017-11-04T22:39:48.055Z"),
        Character(id: 2,
                  name: "Burn pfew",
                  status: "Alive",
                  species: "Human",
                  type: "",
                  gender: "Female",
                  origin: origin,
                  location: location,
                  image: "https://rickandmortyapi.com/api/character/avatar/28.jpeg",
                  episode: epi.characters,
                  url: "https://rickandmortyapi.com/api/character/21",
                  created: "2017-11-04T22:39:48.055Z"),
    ]
}



