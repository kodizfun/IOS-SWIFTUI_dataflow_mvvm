//
//  UserViewModel.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import Foundation

class PlayerViewModel: ObservableObject {
    @Published var life: Int = 6
    @Published var score: Int = 0
    @Published var ammo: Int = 20
    
    func playAgain() {
        life = 6
        score = 0
        ammo = 200
    }
}
