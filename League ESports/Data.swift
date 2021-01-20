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
    case the1111 = "11.1.1"
}

class API {
    func getChamps(completion: @escaping ([Champion]) -> ()) {
        
        // Create URL
        let url = URL(string:"https://api.pandascore.co/lol/champions?token=ldenrhazMEtctsm_rWRftqtn1BvbZPDa22XL5AWjf2hW7e3AY7w")
        guard let requestUrl = url else { fatalError()}
        
        // Create URL Request and set HEADER FOR KEY
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "GET"
        //request.setValue("a991c61cb57a4268947908f5c70bfefa", forHTTPHeaderField: "Ocp-Apim-Subscription-Key")
        let task = URLSession.shared.dataTask(with: request) { (data, _, error) in
            
            // Check for error
            if let error = error {
                print("Error took place \(error)")
                return
            }
            let posts = try! JSONDecoder() .decode([Champion].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
         }
        task.resume()
    }
}
