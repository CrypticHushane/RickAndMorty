//
//  CharactersScreen.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import SwiftUI

struct CharactersScreen: View {
    @StateObject private var characterVM = CharacterViewModelImp(
        service: CharacterServiceImp()
    )
    
    @State private var pageNumber: Int = 1
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottom){
                List {
                    ForEach(characterVM.characters, id: \.id){ character in
                        CharacterView(character: character)
                    }.navigationTitle("Characters")
                }
            }.overlay(alignment: .bottom){
                HStack {
                    Button(action:{
                        Task {
                            pageNumber = pageNumber < 1 ? 1:1
                            await characterVM.getCharactersFromPage(_:pageNumber)
                        }
                    },label: {
                        Image(systemName: "lessthan.circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.green)
                            .shadow(color: .green, radius: 0.2, x: 1, y: 1)
                            .padding()
                    })
                    NavigationLink(destination: EmptyView()){
                        Image(systemName: "house.circle")
                            .font(.system(size: 40))
                            .foregroundColor(.green)
                            .shadow(color: .green, radius: 0.2, x: 1, y: 1)
                            .padding()
                    }
                    Button(action:{
                        Task {
                            pageNumber += 1
                            await characterVM.getCharactersFromPage(_:(pageNumber))
                        }
                    },label: {
                        Image(systemName: "greaterthan.circle.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.green)
                            .shadow(color: .green, radius: 0.2, x: 1, y: 1)
                            .padding()
                    })
                }
            }
        }.task {
            await characterVM.getCharactersFromPage(1)
        }
    }
}


struct CharactersScreen_Previews: PreviewProvider {
    static var previews: some View {
        CharactersScreen()
    }
}
