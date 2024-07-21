//
//  LandMarkRow.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct LandMarkRow: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
                FavouritesButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
    }
}

#Preview("Turtle Rock") {
    let modelData = ModelData()
    return Group {
        LandMarkRow(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
        LandMarkRow(landmark: modelData.landmarks[1])
            .environmentObject(modelData)
    }
}

