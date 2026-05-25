//
//  ContentView.swift
//  AnimateExp
//
//  Created by Harshith on 25/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleValue: Double = 1
    @State private var opacityValue: Double = 1
    @State private var color: Color = .blue
    var body: some View {
        VStack {
            Circle()
                .fill(color)
                .frame(width: 200, height: 200)
                .scaleEffect(scaleValue)
                .opacity(opacityValue)
                .animation(.easeInOut(duration: 1.8).repeatForever(autoreverses: true), value: scaleValue)
        }
        .padding()
        .onAppear{
            scaleValue = 1.2
            opacityValue = 0.6
            color = .indigo
        }
    }
}

#Preview {
    ContentView()
}
