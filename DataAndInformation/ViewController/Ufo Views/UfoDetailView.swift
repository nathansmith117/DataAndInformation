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
            ZStack
            {
                Image("pyramids")
                    .resizable()
                VStack
                {
                    Text("Latitude: \(detailedUfo.latitude)")
                    Text("longitude: \(detailedUfo.longitude)")
                    Text("Shape: \(detailedUfo.shape)")
                    Text("Description: \(detailedUfo.description)")
                    Text("Year: \(detailedUfo.year)")
                    NavigationLink("Map", destination: UfoMapView(ufo: detailedUfo))
                }
            }
        }
    }
}

#Preview ("Preview of ufo detail view")
{
    UfoDetailView(detailedUfo: demoUfo)
}
