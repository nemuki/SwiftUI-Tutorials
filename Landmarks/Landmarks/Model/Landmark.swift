//
//  Landmark.swift
//  Landmarks
//
//  Created by fullerene-06 on 2021/05/22.
//

import Foundation
import SwiftUI
import CoreLocation

// Cordableはデータファイル空構造にデータを簡単にロードできるようになる
struct Landmark: Hashable, Codable {
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
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    // 座標の構造体
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }

}
