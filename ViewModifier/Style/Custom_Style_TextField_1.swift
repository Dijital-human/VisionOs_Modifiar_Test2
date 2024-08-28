//
//  Custom_Style_TextField_1.swift
//  ViewModifier
//
//  Created by Famil Mustafayev on 13.08.24.
//

import Foundation
import SwiftUI
struct Custom_Style_TextField_1: TextFieldStyle{
    func _body(configuration: TextField <Self._Label>) -> some View{
        configuration
            .padding(.horizontal, 22)
            .padding(.vertical, 10)
            .font(.title)
            .fontDesign(.serif)
            .background(RoundedRectangle(cornerRadius: 25.0).strokeBorder(.blue, lineWidth: 2.0))
    }
}
struct Custom_Style_TextField_2: TextFieldStyle{
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.vertical, 8)
            .background(
                VStack {
                    Spacer()
                    Color(UIColor.systemGray2)
                        .frame(height: 2)
                }
            )
    }
}
struct Custom_Style_Outlined_1: TextFieldStyle{
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack{
            if icon != nil {
                icon
                    .foregroundStyle(.gray)
            }
            configuration
        }
        .padding(.vertical, 8)
        .padding(.bottom, 4)
        .background(
            VStack{
                Spacer()
                Color.gray
                    .frame(height: 2)
            }
        )
    }
}

struct OutlinedTextFieldStyle: TextFieldStyle {
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            if icon != nil {
                icon
                    .foregroundColor(Color(UIColor.systemGray2))
            }
            configuration
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(Color(UIColor.systemGray2), lineWidth: 2)
        }
    }
}

struct CustomerStyle_1:TextFieldStyle{
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View{
        HStack{
            if icon != nil {
                icon
                    .foregroundStyle(.white)
            }
            configuration
                .foregroundStyle(.gray)
        }
        .padding()
        .background {
            VStack{
                Spacer()
                Divider().tint(.red)
            }
        }
    }
}
struct CustomerStyle_2: TextFieldStyle{
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack{
            configuration
            if icon != nil{
                icon
                    .foregroundStyle(Color.gray)
            }
        }
        .padding()
        .multilineTextAlignment(.trailing)
        .background {
            VStack{
                Spacer()
                Color.white.frame(height: 2)
            }
        }
        
    }
}

struct CustomerStyle_3: TextFieldStyle{
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack{
            configuration
            if icon != nil {
                icon
                    .foregroundStyle(.green)
            }
        }
        .padding()
        .multilineTextAlignment(.center)
        .background {
            VStack{
                Spacer()
                Color.green
                    .frame(height: 3)
            }
        }
    }
}
struct CustomerStyle_4: TextFieldStyle{
    @State var icon: Image?
    func _body(configuration:TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .multilineTextAlignment(.center)
            .background{
                VStack{
                    Spacer()
                    Color.red.frame(height: 3)
                }
            }
            .overlay {
                
                if icon != nil {
                    icon
                        .foregroundStyle(.red)
                        .offset(x: 330.0)
                }
            }
    }
}

struct CustomerStyle_5: TextFieldStyle{
    @State var icon: Image?
    func _body(configuration: TextField<Self._Label>) -> some View {
        ZStack{
            Rectangle().foregroundStyle(.secondary)
                .opacity(0.7)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10), style: .continuous))
                .frame(height: 40)
                .background {
                    VStack{
                        Spacer()
                        Color.cyan
                            .frame(height: 3)
                    }
                }
            HStack{
                configuration
                if icon != nil{
                    icon
                        .foregroundStyle(Color.cyan)
                }
            }
            .padding()
            .multilineTextAlignment(.center)
            .foregroundStyle(.gray)
        }
    }
}
