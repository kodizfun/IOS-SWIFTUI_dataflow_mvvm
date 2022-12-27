//
//  CustomActionButton.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct CustomActionButton: View {
    
    @EnvironmentObject var pe: PlayerEnvironment
    
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
            pe.life += 1
        case .loseOneLife:
            pe.life -= 1
        case .gainTenPoints:
            pe.score += 10
        case .loseTenPoints:
            pe.score -= 10
        case .pickOneAmmo:
            pe.ammo += 1
        case .useOneAmmo:
            pe.ammo -= 1
        }
    }
}

struct CustomActionButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomActionButton(
            buttonTitle: "Gagne une vie",
            actionType: .gainOneLife
        )
    }
}
