//
//  ContentView.swift
//  RealityKitLaunchScreen
//
//  Created by A. Zheng (github.com/aheze) on 5/10/22.
//  Copyright © 2022 A. Zheng. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = LaunchViewModel()
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Find")
                    .font(.system(size: 42, weight: .bold, design: .rounded))

                Text("An app to find text in real life.")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)

            Spacer()

            Group {
                Text("Use this launch screen however you'd like, but it would be nice if you linked to the GitHub repo.")
                    +
                    Text(" https://github.com/aheze")
            }
            .font(.system(size: 24, weight: .semibold))
            .accentColor(.white.opacity(0.75))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)
        }
        .foregroundColor(.white)
        .background(
            ZStack {
                Color(LaunchConstants.backgroundColor)

                LaunchViewControllerRepresentable(model: model)
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}
