//
//  BucketRowView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

struct BucketRowView: View
{
    var rowBucket: BucketListItem
    var emoji: String
    
    var body: some View
    {
        NavigationLink(destination:
            BucketListDetailView(detailedBucket: rowBucket))
        {
            HStack
            {
                Spacer()
                Text(emoji)
                    .font(.largeTitle)
                Spacer()
                VStack
                {
                    Text("Year: \(String(rowBucket.year))")
                        .accessibilityLabel("Bucket list item year")
                        .accessibilityValue("Bucket list item added on year \(rowBucket.year)")
                    Text(rowBucket.creature)
                        .accessibilityLabel("Bucket list item creature")
                        .accessibilityValue("The bucket list item creature is a \(rowBucket.creature)")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

#Preview ("Bucket Row")
{
    BucketRowView(rowBucket: demoBucket, emoji: generateRandomEmoji(of: ""))
}
