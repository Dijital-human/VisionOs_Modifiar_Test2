//
//  Modifier-1.swift
//  ViewModifier
//
//  Created by Famil Mustafayev on 13.08.24.
//

import Foundation
import SwiftUI

struct Modifier_1: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 700)
            .padding()
            .font(.extraLargeTitle)
    }
}
struct Modifier_2:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontDesign(.serif)
            .bold()
            .foregroundStyle(.secondary)
            .underline(color: Color.green)
    }
}
struct ButtonModifier_1:ViewModifier{
    func body(content: Content) -> some View {
        content
            //.padding(.horizontal)
            .frame(width: 300, height: 40)
            .background(Capsule().stroke(.blue))
            .font(.headline)
    }
}

struct ButtonModifierText_1:ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .background {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.blue)
            }
            .font(.title)
            .fontDesign(.serif)
            .bold()
            .frame(maxWidth: .infinity)
    }
}
struct ButtonModifier_2:ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 300, height: 40)
            .background{
                Color.blue
                    .clipShape(Capsule())
            }
    }
}
struct ButtonModifierText_2:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth: .infinity)
            .background(.clear)
            .fontDesign(.serif)
            .fontWidth(.expanded)
            .monospaced()
    }
}
