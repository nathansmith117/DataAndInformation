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
                NavigationLink("Click for map", destination: UfoMapView(ufo: detailedUfo))
                Text("Shape: \(detailedUfo.shape)")
                Text("Description: \(detailedUfo.description)")
                Text("Year: \(String(detailedUfo.year))")
            }
        }
    }
}

#Preview ("Preview of ufo detail view")
{
    UfoDetailView(detailedUfo: demoUfo)
}
