//
//  ColorCircle.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 01.06.2021.
//

import SwiftUI



struct Lights: View {
    let color: Color
    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Circle()
                .foregroundColor(.red)
                .frame(width: 180, height: 180)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            Circle()
//                .foregroundColor(.yellow)
//                .frame(width: 180, height: 180)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white, lineWidth: 4))
//            Circle()
//                .foregroundColor(.green)
//                .frame(width: 180, height: 180)
//                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Lights(color: .red)
    }
}

