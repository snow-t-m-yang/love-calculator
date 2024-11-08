//
//  ColorPickerView.swift
//  love-calculator
//
//  Created by S on 2024/11/8.
//

import SwiftUI

struct ColorPickerView: View {
    @Binding var selectedColor: Color
    let colors: [Color] = [.yellow, .pink, .blue, .teal, .cyan, .indigo]
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                ZStack {
                    Circle().fill()
                        .foregroundColor(color)
                        .padding(2)
                    Circle()
                        .strokeBorder(selectedColor == color ? .gray : .clear, lineWidth: 4)
                        .scaleEffect(CGSize(width: 1.2, height: 1.2))
                }.onTapGesture {
                    selectedColor = color
                }
            }
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: 100).clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
    }
}

#Preview {
    ColorPickerView(selectedColor: .constant(.indigo))
}
