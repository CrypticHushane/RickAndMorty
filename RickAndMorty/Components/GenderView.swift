//
//  GenderView.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import SwiftUI

struct GenderView: View {

    let gender:String
    var body: some View {
        HStack{
            switch gender {
                case "Male":
                    Circle()
                        .fill(.blue)
                        .frame(width: 10,height: 10)
                case "Female":
                    Circle()
                        .fill(.pink)
                        .foregroundColor(.pink)
                        .frame(width: 10,height: 10)
                default:
                    Circle()
                        .fill(.gray)
                        .frame(width: 10,height: 10)
            }
            Text(gender)
        }
        
    }
    
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView(gender: "Female")
    }
}
