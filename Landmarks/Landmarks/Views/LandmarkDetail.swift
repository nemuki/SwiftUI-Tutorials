//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by fullerene-06 on 2021/05/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        // Stackのデフォルトは中央配置。イニシャライザで変更できる。
        ScrollView {
            // .ignoresSafeArea(edges: .top)でコンテンツを上端まで拡張
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            // offsetで重ねる
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    // スペーサーのデフォルトは親の大きさ
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
