//
//  Landmark.swift
//  Landmarks
//
//  Created by Akram Husseini on 15/07/2024.
//

import Foundation
import SwiftUI

struct Landmark: Codable, Hashable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
