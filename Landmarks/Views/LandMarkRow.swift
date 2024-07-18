//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview("Turtle Rock") {
    Group {
        LandMarkRow(landmark: landmarks[0])
        LandMarkRow(landmark: landmarks[1])
    }
}

