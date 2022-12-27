//
//  ScreenA.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct ScreenA: View {
    @EnvironmentObject var pe: PlayerEnvironment
    
    var body: some View {
        ZStack {
            if pe.life > 0 {
                // Affiche les infos
                VStack {
                    PlayerData()
                    Spacer()
                    CustomActionButton(
                        buttonTitle: "Gagner une vie",
                        actionType: .gainOneLife
                    )
                    CustomActionButton(
                        buttonTitle: "Perdre une vie",
                        actionType: .loseOneLife
                    )
                    CustomActionButton(
                        buttonTitle: "Gagner dix points",
                        actionType: .gainTenPoints
                    )
                    CustomActionButton(
                        buttonTitle: "Perdre dix points",
                        actionType: .loseTenPoints
                    )
                    CustomActionButton(
                        buttonTitle: "Ramasser une munition",
                        actionType: .pickOneAmmo
                    )
                    CustomActionButton(
                        buttonTitle: "Utiliser une munition",
                        actionType: .useOneAmmo
                    )
                    Spacer()
                }
            } else {
                // Fin de partie
                VStack {
                    Text("Vous êtes mort 🤪").font(.title)
                    Text("⚰️").font(.title)
                    
                    Button("REJOUER"){
                        pe.playAgain()
                    }
                }
            }
        }
        
    }
}

struct ScreenA_Previews: PreviewProvider {
    static var previews: some View {
        ScreenA()
    }
}
