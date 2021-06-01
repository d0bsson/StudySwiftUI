//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by Дэвид Бердников on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color(.black)
                .ignoresSafeArea()
            Lights()
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
