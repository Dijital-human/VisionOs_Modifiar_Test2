//
//  ContentView.swift
//  ViewModifier
//
//  Created by Famil Mustafayev on 13.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var txt1: String = ""
    @State private var txt2: String = ""
    var body: some View {
        VStack {
            Text("TextField Custom Style Test - 1").font(.extraLargeTitle)
            VStack(spacing: 10.0){
                TextField(text: $txt1) {
                    Text("Ended your name:")
                }.textFieldStyle(Custom_Style_TextField_1())
                TextField("Ended Your name:", text: $txt1).textFieldStyle(Custom_Style_TextField_2())
                TextField("Ended Your name:", text: $txt1).textFieldStyle(OutlinedTextFieldStyle(icon: .init(systemName: "magnifyingglass")))
                
                TextField("Ended Your name:", text: $txt1).textFieldStyle(Custom_Style_Outlined_1(icon: .init(systemName: "magnifyingglass")))

                TextField("Ended Your name:", text: $txt1).textFieldStyle(CustomerStyle_1(icon: .init(systemName: "magnifyingglass")))
                
                TextField("Ended Your name:", text: $txt1).textFieldStyle(CustomerStyle_2(icon: .init(systemName: "magnifyingglass")))

                TextField("Ended Your name:", text: $txt1).textFieldStyle(CustomerStyle_3(icon: .init(systemName: "magnifyingglass")))
                
                TextField("Ended Your name:", text: $txt1).textFieldStyle(CustomerStyle_4(icon: .init(systemName: "magnifyingglass")))

                TextField("Ended Your name:", text: $txt1).textFieldStyle(CustomerStyle_5(icon: .init(systemName: "magnifyingglass")))

                Spacer()
            }.frame(width: 700)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
