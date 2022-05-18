//
//  VillagerData.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import Foundation

struct VillagerData: Codable {
    let id: Int
    let fileName: String
    let name: Name
    let personality, birthdayString, birthday, species: String
    let gender, catchPhrase: String
    let iconURI, imageURI: String

    enum CodingKeys: String, CodingKey {
        case id
        case fileName = "file-name"
        case name, personality
        case birthdayString = "birthday-string"
        case birthday, species, gender
        case catchPhrase = "catch-phrase"
        case iconURI = "icon_uri"
        case imageURI = "image_uri"
    }
}
