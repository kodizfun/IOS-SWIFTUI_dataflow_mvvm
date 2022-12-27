//
//  ContentView.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {

        TabView {
            ScreenA().tabItem {
                Label("Screen A", systemImage: "paperplane")
            }
            ScreenB().tabItem {
                Label("Screen B", systemImage: "tortoise")
            }
            ScreenC().tabItem {
                Label("Screen C", systemImage: "heart")
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
