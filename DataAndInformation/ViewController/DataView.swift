//
//  DataView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var bucketData = BucketDataStore(buckets: loadJSON(from: "buckets2023") as! [BucketListItem])
    
    var body: some View
    {
        NavigationStack
        {
            VStack
            {
                List
                {
                    Section("Buckets!")
                    {
                        ForEach(bucketData.buckets)
                        {
                            bucket in
                            
                            BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                        }
                    }
                }
            }
        }
    }
    
    private func removeBucketItems(at offsets: IndexSet) -> Void
    {
        bucketData.buckets.remove(atOffsets: offsets)
    }
}

#Preview ("Data View")
{
    DataView()
}
