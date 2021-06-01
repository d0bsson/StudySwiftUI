//
//  ColorCircle.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 01.06.2021.
//

import SwiftUI

struct Lights: View {
    var body: some View {
        VStack(alignment: .center) {
            Circle()
                .foregroundColor(.red)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Color(.yellow)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            Color(.green)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
        }
    }
}


struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Lights()
    }
}
