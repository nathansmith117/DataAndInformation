//
//  BucketListDetailView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

struct BucketListDetailView: View
{
    var detailedBucket: BucketListItem
    
    var body: some View
    {
        Color.orange
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        VStack
        {
            Text("Year: \(detailedBucket.year)")
            Text(detailedBucket.creature)
            Image("turtle bucket")
                .resizable()
                .scaledToFit()
            Text(detailedBucket.goal)
        }
    }
}

#Preview
{
    BucketListDetailView(detailedBucket: demoBucket)
}
