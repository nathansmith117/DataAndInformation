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
    
    init (buckets : [BucketListItem] = [])
    {
        self.buckets = buckets
    }
}
