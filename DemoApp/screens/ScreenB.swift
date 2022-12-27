//
//  ScreenB.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct ScreenB: View {
    @EnvironmentObject var pe: PlayerEnvironment
    var body: some View {
        VStack {
            PlayerData()
            Text("SCREEN B").font(.title)
            CustomActionButton(
                buttonTitle: "Gagner une vie",
                actionType: .gainOneLife
            )
        }
        
    }
}

struct ScreenB_Previews: PreviewProvider {
    static var previews: some View {
        ScreenB()
    }
}
