//
//  Modifier_Test_1.swift
//  ViewModifier
//
//  Created by Famil Mustafayev on 13.08.24.
//

import SwiftUI

struct Modifier_Test_1: View {
    var body: some View {
        Text("Modifier Test - 1").modifier(Modifier_1())
        Text("Modifier bize daha asan ve kod qarisiqlifginin qarsisini alaraq komek edir").modifier(Modifier_2())
        HStack{
            Button(action: {}, label: {
                Text("Button").modifier(ButtonModifierText_1())
            }).modifier(ButtonModifier_1())
            
            Button(action: {}, label: {
                Text("Button").modifier(ButtonModifierText_2())
            }).modifier(ButtonModifier_2())
        }
    }
}

#Preview (windowStyle: .automatic){
    Modifier_Test_1()
}
