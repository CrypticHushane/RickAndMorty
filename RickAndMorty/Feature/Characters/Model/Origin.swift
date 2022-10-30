//
//  Origin.swift
//  RickAndMorty
//
//  Created by Oshane Williams on 29/10/2022.
//

import Foundation

// MARK: - Orgin
struct Origin: Codable {
    let name: String
    let url: String?
}

extension Origin {
    static let dummyOrg: [Origin] = [
        Origin(name: "Liverpool", url: "liverpoolfc.com"),
        Origin(name: "Arsenal", url: "arsenal.com"),
        Origin(name: "Chelsea", url: "chelsea.com"),
        Origin(name: "City", url: "city.com"),
    ]
}
