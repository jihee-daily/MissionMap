//
//  SwiftUIView.swift
//  practicemap01
//
//  Created by kimjihee on 3/11/24.
//

import SwiftUI
import MapKit

struct ViewA: View {
    // Map Properties
    var body: some View {
        if #available(iOS 17.0, *) {
            @State var cameraPosition: MapCameraPosition = .region(.myRegion)
            Map(position: $cameraPosition) {
                //Map Annotations
                Marker("Apple Park", coordinate: .myLocation)
            }
        } else {
            // Fallback on earlier versions
        }
    }    
    
}

#Preview {
    ViewA()
}

// Location Data
extension CLLocationCoordinate2D {
    static var myLocation: CLLocationCoordinate2D {
        return .init(latitude: 36.0140, longitude: 129.3258)
    }
}

extension MKCoordinateRegion {
    static var myRegion: MKCoordinateRegion {
        return .init(center: .myLocation, latitudinalMeters: 10000, longitudinalMeters: 10000)
    }
}


