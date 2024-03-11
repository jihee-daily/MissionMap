//
//  SwiftUIView 2.swift
//  
//
//  Created by kimjihee on 3/11/24.
//

import SwiftUI

struct ViewC: View {
    @State private var degrees = 0.0
    
    var body: some View {
        VStack {
            Spacer()
            LinearGradient(gradient: Gradient(colors: [.orange, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .cornerRadius(10)
                .rotation3DEffect(
                    .degrees(degrees), axis: (x: 1, y: 1, z: 0))
            Button("Animate") {
                withAnimation {
                    self.degrees += 180
                }
            }
            Spacer()
            
        }
    }
}

#Preview {
    ViewC()
}
