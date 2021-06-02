//
//  Button.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 02.06.2021.
//

import SwiftUI

struct StartButton: View {
    
    @State var labelName = "START"
    
    
    var body: some View {
        Button(action: {
            
            labelName = "NEXT"
            
        }, label: {
            Text(labelName)
                .font(.title)
                .frame(width: 200.0, height: 20.0)
                .padding()
                .foregroundColor(.black)
                .background(Color.blue)
                .cornerRadius(10.0)
        })
    }
    
    private func currentLight() {
        
        
    }
    
    
    struct Button_Previews: PreviewProvider {
        static var previews: some View {
            StartButton()
        }
    }
}

