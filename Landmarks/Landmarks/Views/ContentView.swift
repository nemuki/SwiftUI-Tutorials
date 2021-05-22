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
        LandmarkList()
    }
}

// ビューのプレビューを宣言
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
