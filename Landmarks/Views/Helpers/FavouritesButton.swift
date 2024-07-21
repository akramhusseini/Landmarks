//
//  FavouritesButton.swift
//  Landmarks
//
//  Created by Akram Husseini on 21/07/2024.
//

import SwiftUI

struct FavouritesButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
                .background(.clear)
        }
    }
}

#Preview {
    FavouritesButton(isSet: .constant(true))
}
