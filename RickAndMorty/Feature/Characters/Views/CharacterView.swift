//
//  CharacterView.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import SwiftUI

struct CharacterView: View {
    let character: Character
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: character.image),scale: 3)
                .aspectRatio(1, contentMode: .fit)
                .clipShape(Circle())
                .shadow(color: .green, radius: 2)
            
            VStack(alignment: .leading) {
                Text(character.name).bold()
                StatusView(status: character.status)
                GenderView(gender: character.gender)
            }.padding()
        }
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(character: Character.dummyChar.first!)
    }
}
