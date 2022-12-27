//
//  PlayerData.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct PlayerData: View {
    
    @EnvironmentObject var pe: PlayerEnvironment
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Life : \(pe.life)")
            Text("Score : \(pe.score)")
            Text("Ammo : \(pe.ammo)")
        }
        .font(.title)
        .bold()
        .padding()
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(6)
    }
}

struct PlayerData_Previews: PreviewProvider {
    static var previews: some View {
        PlayerData()
    }
}
