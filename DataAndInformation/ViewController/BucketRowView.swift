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
                    Text("Year: \(rowBucket.year)")
                    Text(rowBucket.creature)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

#Preview ("Bucket Row")
{
    BucketRowView(rowBucket: demoBucket,
                  emoji: generateRandomEmoji(of: ""))
}
