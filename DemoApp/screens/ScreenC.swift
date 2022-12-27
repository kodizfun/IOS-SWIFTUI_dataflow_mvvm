//
//  ScreenC.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 27/12/2022.
//

import SwiftUI

struct ScreenC: View {
    var body: some View {
        VStack {
            PlayerData()
            Text("SCREEN C").font(.title)
        }
    }
}

struct ScreenC_Previews: PreviewProvider {
    static var previews: some View {
        ScreenC()
    }
}
