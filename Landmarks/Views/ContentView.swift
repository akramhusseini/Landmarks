//
//  ContentView.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
