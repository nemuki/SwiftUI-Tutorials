//
//  MapView.swift
//  Landmarks
//
//  Created by fullerene-06 on 2021/05/22.
//

import SwiftUI
import MapKit

struct MapView: View {
    // Stateは変わるとビューを自動更新してくれるやつ
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        // State変数の前に「$」をつけると参照のようなバインディング(？)を渡すらしい
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
