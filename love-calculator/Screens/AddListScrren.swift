//
//  AddListScrren.swift
//  love-calculator
//
//  Created by S on 2024/11/8.
//

import SwiftUI

struct AddListScrren: View {
    @Environment(\.dismiss) private var dismiss

    @State private var listName: String = ""
    @State private var color: Color = .blue

    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(color)
            TextField("List Name", text: $listName)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing], 44)

            ColorPickerView(selectedColor: $color)
        }
        .navigationTitle("New List")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Close") {
                    dismiss()
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done") {}
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddListScrren()
    }
}
