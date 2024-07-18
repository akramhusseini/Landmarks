//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List (landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandMarkRow(landmark: landmark)
                }
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
    
}

#Preview {
    LandmarkList()
}
