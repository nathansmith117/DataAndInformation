//
//  BucketDataStore.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import Foundation
import Combine

class BucketDataStore : ObservableObject
{
    @Published var buckets : [BucketListItem]
    {
        didSet
        {
            let encoder = JSONEncoder()
            if let encodedBuckets = try? encoder.encode(buckets)
            {
                UserDefaults.standard.set(encodedBuckets, forKey: "Saved Buckets")
            }
        }
    }
    
    init (buckets : [BucketListItem] = [])
    {
        self.buckets = buckets
    }
}
