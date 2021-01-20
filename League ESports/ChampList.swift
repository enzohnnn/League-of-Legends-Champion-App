//
//  ChampList.swift
//  League ESports
//
//  Created by Enzo Han on 12/30/20.
//

import SwiftUI

struct ChampList: View {
    @State var champList: [Champion] = []
    
    var body: some View {
        VStack {
            NavigationView {
                List(champList) { champ in
                    NavigationLink(destination: ChampionDetail(champData: champ)) {
                        Text(champ.name)
                    }
                }.onAppear() {
                    API().getChamps { champData in
                        self.champList = champData
                    }
                }
            }
        }
    }
}

struct ChampList_Previews: PreviewProvider {
    static var previews: some View {
        ChampList()
    }
}
