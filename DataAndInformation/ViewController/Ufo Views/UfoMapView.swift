//
//  UfoMapView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 11/8/23.
//

import SwiftUI

import MapKit

struct UfoMapView: View
{
    private var ufo: UfoItem
    private var location: MKCoordinateRegion
    
    init (ufo: UfoItem)
    {
        self.ufo = ufo
        self.location = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: ufo.latitude, longitude: ufo.longitude),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    }
    
    var body: some View
    {
        Map(bounds: MapCameraBounds(centerCoordinateBounds: location, maximumDistance: 20_000.0))
        {
            Annotation("Ufo", coordinate: location.center, anchor: .bottom)
            {
                Text("👽")
            }
        }
        .mapStyle(.standard(elevation: .realistic))
    }
}

#Preview ("Preview of ufo map")
{
    UfoMapView(ufo: demoUfo)
}
