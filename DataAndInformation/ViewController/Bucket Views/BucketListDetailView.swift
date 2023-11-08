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
        VStack
        {
            Image("Buckethead")
                .resizable()
            Text("Year: \(detailedBucket.year)")
                .accessibilityLabel("The year the bucket list item was added")
                .accessibilityValue("Bucket list item added on the year \(detailedBucket.year)")
            Text("Creature: \(detailedBucket.creature)")
                .accessibilityLabel("The creature that added the bucket list item")
                .accessibilityValue("The creature is a \(detailedBucket.creature)")
            Text("Goal: \(detailedBucket.goal)")
                .accessibilityLabel("The goal on the bucket list item")
                .accessibilityValue("The goal is: \(detailedBucket.goal)")
        }
    }
}

#Preview ("Detail of a BucketListItem")
{
    BucketListDetailView(detailedBucket: demoBucket)
}
