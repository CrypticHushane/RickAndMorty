//
//  Episode.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

// MARK: - Episode
struct Episode: Codable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String
}

extension Episode {
    static let char: [String] = ["https://rickandmortyapi.com/api/character/1", "https://rickandmortyapi.com/api/character/2"]
    static let dummyData: [Episode] = [
        Episode(id: 1, name: "Shangz", airDate: "September 13, 2015", episode: "\(API.baseUrl)/episode/1", characters: char, url: "https://rickandmortyapi.com/api/episode/18", created: "2017-11-10T12:56:35.569Z"),
        Episode(id: 2, name: "Shango", airDate: "September 13, 2015", episode: "\(API.baseUrl)/episode/12", characters:  char, url: "https://rickandmortyapi.com/api/episode/18", created: "2017-11-10T12:56:35.569Z"),
        Episode(id: 3, name: "Oshango", airDate: "September 13, 2015", episode: "\(API.baseUrl)/episode/13", characters:  char, url: "https://rickandmortyapi.com/api/episode/18", created: "2017-11-10T12:56:35.569Z"),
        Episode(id: 4, name: "Oshane", airDate: "September 13, 2015", episode: "\(API.baseUrl)/episode/14", characters:  char, url: "https://rickandmortyapi.com/api/episode/18", created: "2017-11-10T12:56:35.569Z"),
        Episode(id: 5, name: "Cryptic", airDate: "September 13, 2015", episode: "\(API.baseUrl)/episode/15", characters:  char, url: "https://rickandmortyapi.com/api/episode/18", created: "2017-11-10T12:56:35.569Z")
    ]
}
