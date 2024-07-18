//
//  CircleImage.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(.circle)
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
