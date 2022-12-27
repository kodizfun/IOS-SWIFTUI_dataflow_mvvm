//
//  ContentView.swift
//  DemoApp
//
//  Created by Sengsathit SILALAK on 01/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var note: Int = 10
    
    var bckColor: Color {
        if note < 10 {
            return Color.red
        } else if note >= 10 && note < 12 {
            return Color.blue
        } else {
            return Color.green
        }
    }
    
    var message: String {
        if note < 10 {
            return "Besoin de travailler encore"
        } else if note >= 10 && note < 12 {
            return "Niveau passable"
        } else {
            return "Bon niveau"
        }
    }
    
    var body: some View {
        ZStack {
            bckColor.ignoresSafeArea()
            VStack {
                Text("\(note)/20")
                Text(message)
                Stepper("",value: $note, in: 0...20)
                    .accentColor(.white)
                    .labelsHidden()
            }.font(.title)
                .foregroundColor(.white)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
