//
//  Data.swift
//  League ESports
//
//  Created by Enzo Han on 12/30/20.
//

import SwiftUI

struct Champion: Codable, Identifiable {
    let armor, armorperlevel, attackdamage, attackdamageperlevel: Double
    let attackrange: Int
    let attackspeedperlevel: Double
    let bigImageURL: String
    let crit, critperlevel: Int
    let hp: Double
    let hpperlevel: Int
    let hpregen, hpregenperlevel: Double
    let id: Int
    let imageURL: String
    let movespeed: Int
    let mp, mpperlevel, mpregen, mpregenperlevel: Double
    let name: String
    let spellblock, spellblockperlevel: Double
    let videogameVersions: [VideogameVersion]

    enum CodingKeys: String, CodingKey {
        case armor, armorperlevel, attackdamage, attackdamageperlevel, attackrange, attackspeedperlevel
        case bigImageURL = "big_image_url"
        case crit, critperlevel, hp, hpperlevel, hpregen, hpregenperlevel, id
        case imageURL = "image_url"
        case movespeed, mp, mpperlevel, mpregen, mpregenperlevel, name, spellblock, spellblockperlevel
        case videogameVersions = "videogame_versions"
    }
}

enum VideogameVersion: String, Codable {
    case the10191 = "10.19.1"
    case the10201 = "10.20.1"
    case the10211 = "10.21.1"
    case the10221 = "10.22.1"
    case the10231 = "10.23.1"
    case the10241 = "10.24.1"
    case the10251 = "10.25.1"
}

class API {
    
}
