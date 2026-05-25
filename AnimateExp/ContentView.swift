//
//  ContentView.swift
//  AnimateExp
//
//  Created by Harshith on 25/05/26.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleValue: Double = 1
    var body: some View {
        VStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 200, height: 200)
                .scaleEffect(scaleValue)
                .animation(.spring(response: 0.3, dampingFraction: 0.5), value: scaleValue)
                .onTapGesture {
                    springBounce()
                }
        }
        .padding()
    }
    private func springBounce() {
        scaleValue = 0.6
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            scaleValue = 1
        }
    }
}

#Preview {
    ContentView()
}
