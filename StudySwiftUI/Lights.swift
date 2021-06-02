//
//  ColorCircle.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 01.06.2021.
//

import SwiftUI



struct Lights: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Circle()
                .foregroundColor(color)
                .frame(width: 180, height: 180)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .opacity(alpha)
        }
    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Lights(color: .black, alpha: 0.3)
    }
    
    
}

