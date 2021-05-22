//
//  ContentView.swift
//  Landmarks
//
//  Created by fullerene-06 on 2021/05/22.
//

import SwiftUI

// Viewプロトコルに準拠した、ビューのコンテンツとレイアウトの記述
struct ContentView: View {
    var body: some View {
        // Stackのデフォルトは中央配置。イニシャライザで変更できる。
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
        }
        .padding()
    }
}

// ビューのプレビューを宣言
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
