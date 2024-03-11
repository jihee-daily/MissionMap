//
//  SwiftUIView.swift
//  
//
//  Created by kimjihee on 3/11/24.
//

import SwiftUI

struct ViewB: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            Text("ViewB")
                .foregroundColor(.red)
                .font(.system(size:30))
        }
    }
}

#Preview {
    ViewB()
}
