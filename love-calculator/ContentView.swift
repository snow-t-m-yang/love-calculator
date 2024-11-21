//
//  ContentView.swift
//  love-calculator
//
//  Created by S on 2024/11/8.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Button{
                    isPresented = true
                } label: {
                    Text("Add List")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.headline)
                }.padding()
                
            }.sheet(isPresented: $isPresented){
                NavigationStack {
                    AddListScrren { name, color in
                        // save it!
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
