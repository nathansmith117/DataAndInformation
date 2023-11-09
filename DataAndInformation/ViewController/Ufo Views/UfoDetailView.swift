//
//  UfoDetailView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 11/3/23.
//

import SwiftUI

struct UfoDetailView: View
{
    var detailedUfo : UfoItem
    
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                Image("pyramids")
                    .resizable()
                Text("Latitude: \(detailedUfo.latitude)")
                Text("longitude: \(detailedUfo.longitude)")
                NavigationLink("Map", destination: UfoMapView(ufo: detailedUfo))
                Text("") // For a bit of extra space (:
                Text("Shape: \(detailedUfo.shape)")
                Text("Description: \(detailedUfo.description)")
                Text("Year: \(detailedUfo.year)")
            }
        }
    }
}

#Preview ("Preview of ufo detail view")
{
    UfoDetailView(detailedUfo: demoUfo)
}
