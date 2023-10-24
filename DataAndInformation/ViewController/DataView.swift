//
//  DataView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

struct DataView: View
{
    @ObservedObject var bucketData = BucketDataStore(buckets: loadJSON(from: "buckets2023"))
    
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
}

#Preview ("Data View")
{
    DataView()
}
