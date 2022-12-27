//
//  CustomActionButton.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct CustomActionButton: View {
    
    @ObservedObject var viewModel: PlayerViewModel
    var buttonTitle: String
    var actionType: ActionType
    
    var body: some View {
        
        Button(action: {
            handleClick()
        }, label: {
            Text(buttonTitle)
                .frame(width: 200)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
        })
        
    }
    
    func handleClick() {
        switch actionType {
        case .gainOneLife:
            viewModel.life += 1
        case .loseOneLife:
            viewModel.life -= 1
        case .gainTenPoints:
            viewModel.score += 10
        case .loseTenPoints:
            viewModel.score -= 10
        case .pickOneAmmo:
            viewModel.ammo += 1
        case .useOneAmmo:
            viewModel.ammo -= 1
        }
    }
}

struct CustomActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomActionButton(
            viewModel: PlayerViewModel(),
            buttonTitle: "Gagne une vie",
            actionType: .gainOneLife
        )
    }
}
