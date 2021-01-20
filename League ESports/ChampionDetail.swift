//
//  ChampionDetail.swift
//  League ESports
//
//  Created by Enzo Han on 12/30/20.
//

import SwiftUI

struct ChampionDetail: View {
    
    var champData: Champion
    
    var body: some View {
        Text("My name is:")
        Text(champData.name)
    }
}

struct ChampionDetail_Previews: PreviewProvider {
    static var previews: some View {
        ChampionDetail(champData: Champion(armor: 1.0, armorperlevel: 1.0, attackdamage: 1.0, attackdamageperlevel: 1.0, attackrange: 255, attackspeedperlevel: 25.0, bigImageURL: "", crit: 50, critperlevel: 1, hp: 500, hpperlevel: 50, hpregen: 50, hpregenperlevel: 50, id: 50, imageURL: "nil", movespeed: 225, mp: 500, mpperlevel: 10, mpregen: 1.0, mpregenperlevel: 1.0, name: "Zeke", spellblock: 2.0, spellblockperlevel: 5.0, videogameVersions: [VideogameVersion.the1111]))
    }
}
