//
//  CharacterViewModel.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

protocol CharacterViewModel: ObservableObject {
    func getCharacters() async
//    func getCharactersFromPage(_ page:Int?) async
}

@MainActor
final class CharacterViewModelImp: CharacterViewModel {
    @Published private(set) var characters: [Character] = []
    private let service: any CharactersService
    
    init(service: any CharactersService){
        self.service = service
    }
    
    func getCharacters() async {
        do {
            self.characters = try await service.getCharacters()
        } catch {
            print(error)
        }
    }
    
    func getCharactersFromPage(_ page: Int?) async {
        do {
            self.characters = try await service.getCharactersFromPage(page)
        } catch {
            print(error)
        }
    }
    
    
}
