//
//  SeaCreatureData.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import Foundation

struct SeaCreatureData: Codable, Identifiable {
    var id: Int
    let fileName: String
    let name: Name
    let availability: SeaAvailability
    let speed, shadow: String
    let price: Int
    let catchPhrase: String
    let imageURI, iconURI: String
    let museumPhrase: String

    enum CodingKeys: String, CodingKey {
        case id
        case fileName = "file-name"
        case name, availability, speed, shadow, price
        case catchPhrase = "catch-phrase"
        case imageURI = "image_uri"
        case iconURI = "icon_uri"
        case museumPhrase = "museum-phrase"
    }
}
