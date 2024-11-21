//
//  MyListScreen.swift
//  love-calculator
//
//  Created by S on 2024/11/8.
//

import SwiftUI

struct MyListScreen: View {
    let myLists = ["Reminders", "Groceries", "Entertainment"]

    @State private var isPresented: Bool = false

    var body: some View {
        List {
            Text("Testing")

            ForEach(myLists, id: \.self) { myList in
                HStack {
                    Image(systemName: "line.3.horizontal.circle.fill")
                        .font(.system(size: 32))
                    Text(myList)
                }
            }
            Button(action: {
                isPresented = true
            }, label: {
                Text("Add List")
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }).listRowSeparator(.hidden)
        }.listStyle(.plain)
            .sheet(isPresented: $isPresented, content: {
                AddListScrren(onSave: {(_, _) in })
            })
    }
}

#Preview {
    NavigationStack {
        MyListScreen()
    }
}
