//
//  SwiftUIView.swift
//  practicemap01
//
//  Created by kimjihee on 3/11/24.
//

import SwiftUI
import MapKit

struct ViewA: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            // Map Properties
            @State var cameraPosition: MapCameraPosition = .region(.myRegion)
            @Namespace var locationSpace
            Map(position: $cameraPosition) {
                //Map Annotations
//                Marker("ADA", systemImage: "applelogo", coordinate: .myLocation)
                Annotation("ADA", coordinate: .myLocation) {
                    ZStack {
                        Image(systemName: "applelogo")
                            .font(.title3)
                        
                        Image(systemName: "square")
                            .font(.largeTitle)
                    }
                }
                .annotationTitles(.hidden)
                
                // To Show User Current Location
                UserAnnotation()
                
            }
//            .overlay(alignment: .bottomTrailing) {
//                VStack(spacing: 15) {
//                    MapCompass(scope: locationSpace)
//                    MapPitchSlider(scope: locationSpace)
//                    MapUserLocationButton(scope: locationSpace)
//                }
//                .buttonBorderShape(.circle)
//                .padding()
//            }
//            .mapScope(locationSpace)
            .mapControls {
                //Compass, 3D Maps, User Location etc.
                MapCompass()
                MapUserLocationButton()
                MapPitchSlider()
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


