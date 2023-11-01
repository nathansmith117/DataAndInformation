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
        if let storedOnDevice = UserDefaults.standard.data(forKey: "Saved Buckets")
        {
            let decoder = JSONDecoder()
            if let savedBuckets = try? decoder.decode([BucketListItem].self, from: storedOnDevice)
            {
                if (savedBuckets.count > 20)
                {
                    self.buckets = savedBuckets
                    return // We are finally using function guards (:
                }
            }
        }
        
        
        self.buckets = buckets
    }
}
