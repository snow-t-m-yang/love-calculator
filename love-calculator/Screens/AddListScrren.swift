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
    @State private var selectedColor: Color = .blue
    
    let onSave: (String, UIColor) -> Void
    
    private var isFormValid: Bool {
        !listName.isEmpty
    }
    
    var body: some View {
        VStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(selectedColor)
            TextField("List Name", text: $listName)
                .textFieldStyle(.roundedBorder)
                .padding([.leading, .trailing], 44)

            ColorPickerView(selectedColor: $selectedColor)
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
                Button("Done") {
                    onSave(listName, UIColor(selectedColor))
                    
                }.disabled(!isFormValid)

            }
        }
    }
}

#Preview {
//    NavigationStack {
    AddListScrren(onSave: { _, _ in })
//    }
}
