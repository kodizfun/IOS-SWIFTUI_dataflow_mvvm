//
//  DemoAppApp.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 01/12/2022.
//

import SwiftUI

@main
struct DemoAppApp: App {
    
    @StateObject var playerEnvironement = PlayerEnvironment()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(playerEnvironement)
        }
    }
}
