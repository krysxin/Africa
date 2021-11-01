//
//  MapView.swift
//  Africa
//
//  Created by QINXIN SHU on 2021/10/11.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4388599)
        
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
 
    
    // MARK: - BODY
    var body: some View {
        // MARK: - No1 Basic Map
        // Map(coordinateRegion: $region)
        
        // MARK: - No2 Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {item in
            // (A) PIN: Old Style (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: New Style (always static)
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) Custom Basic Annotation (interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            }
        })
        
    }
}



// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
