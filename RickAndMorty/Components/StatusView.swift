//
//  StatusView.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import SwiftUI

struct StatusView: View {
    let status:String
    var body: some View {
        HStack{
            switch status {
                case "Alive":
                    Circle()
                        .fill(.green)
                        .frame(width: 10,height: 10)
                case "Dead":
                    Circle()
                        .fill(.red)
                        .frame(width: 10,height: 10)
                default:
                    Circle()
                        .fill(.gray)
                        .frame(width: 10,height: 10)
            }
            Text(status)
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(status: "Alive")
    }
}
