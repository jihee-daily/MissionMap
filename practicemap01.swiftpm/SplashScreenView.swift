//
//  SwiftUIView.swift
//  practicemap01
//
//  Created by kimjihee on 3/11/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "pin.square.fill")
                        .font(.system(size: 150))
                        .foregroundColor(.orange)
                    Text("joy's playgrounds")
                        .font(Font.custom("Futura-BOLD", size: 27))
                        .foregroundColor(.orange.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.3) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
