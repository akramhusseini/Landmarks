//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandMarkRow(landmark: landmark)
                            .buttonStyle(ClearButtonStyle())

                    }
                    .contentShape(Rectangle()) // Ensure the entire row is tappable
                            .background(Color.clear) // Ensure the background is clear
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
    
}

#Preview {
    LandmarkList()
        .environmentObject(ModelData())
}

struct ClearButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding() // Optional: Add padding if necessary
            .background(Color.clear) // Ensure the background is clear
            .contentShape(Rectangle()) // Ensure the entire area is tappable
    }
}
