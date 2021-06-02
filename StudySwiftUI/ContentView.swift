//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 01.06.2021.
//

import SwiftUI

enum changeLights {
    case red, green, yellow
}

struct ContentView: View {
    
    @State var labelName = "START"
    
    @State var currentLight = changeLights.red
    
    @State var redLight = 0.3
    @State var yellowLight = 0.3
    @State var greenLight = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 50) {
                Lights(color: .red,
                       alpha: redLight)
                Lights(color: .yellow,
                       alpha: yellowLight)
                Lights(color: .green,
                       alpha: greenLight)
                StartButton(labelName: labelName,
                            action: changeLight)
            }
            .padding()
        }
    }
    
    private func changeLight() -> () {
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLight = 0.3
            redLight = 1
        case .yellow:
            currentLight = .green
            redLight = 0.3
            yellowLight = 1
        case .green:
            currentLight = .red
            yellowLight = 0.3
            greenLight = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
