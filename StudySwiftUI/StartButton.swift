//
//  Button.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 02.06.2021.
//

import SwiftUI

struct StartButton: View {
    let labelName: String
    let action: () -> ()
        
    var body: some View {
        Button(action: action){
            Text(labelName)
                .font(.title)
                .frame(width: 200.0, height: 20.0)
                .padding()
                .foregroundColor(.black)
                .background(Color.blue)
                .cornerRadius(10.0)
        }
    }
    
    
    struct Button_Previews: PreviewProvider {
        static var previews: some View {
            StartButton(labelName: "START", action: {} )
        }
    }
    
    
}

