//
//  CharactersService.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

protocol CharactersService : ObservableObject {
    func getCharacters() async throws -> [Character]
    func getCharactersFromPage(_ page:Int?) async throws -> [Character]
}

final class CharacterServiceImp: CharactersService {
    
    func getCharacters() async throws -> [Character] {
        let urlsession = URLSession.shared
        let url = URL(string: API.baseUrl.appending("character"))!
        let (data,_) = try await urlsession.data(from: url)
        let decoded_data = try JSONDecoder().decode(CharacterResult.self, from: data)
        return decoded_data.results
    }
    
    func getCharactersFromPage(_ page:Int?) async throws -> [Character] {
        let urlsession = URLSession.shared
        let url = URL(string: API.baseUrl.appending("character/?page=\(page ?? 1)"))!
        let (data,_) = try await urlsession.data(from: url)
        let decoded_data = try JSONDecoder().decode(CharacterResult.self, from: data)
        return decoded_data.results
    }
}
