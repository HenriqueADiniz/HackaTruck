//
//  SearchBar.swift
//  iMarket
//
//  Created by iMarketGroup on Junho/23.
//

import Foundation
import SwiftUI
 
struct SearchBar: View {
    @State public var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Pesquisar")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }.background()
    }
}


