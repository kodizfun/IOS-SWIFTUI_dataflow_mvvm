//
//  ContentView.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = PlayerViewModel()
    
    var body: some View {
        ZStack {
            if vm.life > 0 {
                // Affiche les infos
                VStack {
                    PlayerData(viewModel: vm)
                    Spacer()
                    CustomActionButton(
                        viewModel: vm,
                        buttonTitle: "Gagner une vie",
                        actionType: .gainOneLife
                    )
                    CustomActionButton(
                        viewModel: vm,
                        buttonTitle: "Perdre une vie",
                        actionType: .loseOneLife
                    )
                    CustomActionButton(
                        viewModel: vm,
                        buttonTitle: "Gagner dix points",
                        actionType: .gainTenPoints
                    )
                    CustomActionButton(
                        viewModel: vm,
                        buttonTitle: "Perdre dix points",
                        actionType: .loseTenPoints
                    )
                    CustomActionButton(
                        viewModel: vm,
                        buttonTitle: "Ramasser une munition",
                        actionType: .pickOneAmmo
                    )
                    CustomActionButton(
                        viewModel: vm,
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
                        vm.playAgain()
                    }
                }
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
