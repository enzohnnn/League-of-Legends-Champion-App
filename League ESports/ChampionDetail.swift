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
        ScrollView {
            VStack {
                HStack {
                    Text(champData.name).font(.largeTitle).bold()
                }
                VStack {
                    RemoteImage(url: champData.imageURL)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                        .frame(width: 256, height: 256)
                }
                // Attack Stats
                VStack {
                    Text("Attack Stats").bold().font(.title)
                    HStack {
                        Text("Attack Range: ")
                        Text(String(champData.attackrange))
                    }
                    HStack {
                        Text("Attack Damage: ")
                        Text(String(champData.attackdamage))
                    }
                    HStack {
                        Text("Attack Speed Per Level")
                        Text(String(champData.attackspeedperlevel))
                    }
                }.padding(.top)
                // Defensive Stats
                VStack {
                    Text("Defensive Stats").bold().font(.title)
                    HStack {
                        Text("HP: ")
                        Text(String(champData.hp))
                        Text("HP Per Level: ")
                        Text(String(champData.hpperlevel))
                    }
                    HStack {
                        Text("Armor: ")
                        Text(String(champData.armor))
                        Text("Armor Per Level: " )
                        Text(String(champData.armorperlevel))
                    }
                }.padding(.top)
            }
        }
    }
}

struct ChampionDetail_Previews: PreviewProvider {
    static var previews: some View {
        ChampionDetail(champData: Champion(armor: 1.0, armorperlevel: 1.0, attackdamage: 1.0, attackdamageperlevel: 1.0, attackrange: 255, attackspeedperlevel: 25.0, bigImageURL: "", crit: 50, critperlevel: 1, hp: 500, hpperlevel: 50, hpregen: 50, hpregenperlevel: 50, id: 50, imageURL: "nil", movespeed: 225, mp: 500, mpperlevel: 10, mpregen: 1.0, mpregenperlevel: 1.0, name: "Zeke", spellblock: 2.0, spellblockperlevel: 5.0))
    }
}
