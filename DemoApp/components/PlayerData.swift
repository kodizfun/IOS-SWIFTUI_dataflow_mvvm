//
//  PlayerData.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct PlayerData: View {
    
    @ObservedObject var viewModel: PlayerViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Life : \(viewModel.life)")
            Text("Score : \(viewModel.score)")
            Text("Ammo : \(viewModel.ammo)")
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
        PlayerData(viewModel: PlayerViewModel())
    }
}
