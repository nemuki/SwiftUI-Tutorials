//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by fullerene-06 on 2021/05/22.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        // Stackのデフォルトは中央配置。イニシャライザで変更できる。
        VStack {
            // .ignoresSafeArea(edges: .top)でコンテンツを上端まで拡張
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            // offsetで重ねる
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    // スペーサーのデフォルトは親の大きさ
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()

            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
