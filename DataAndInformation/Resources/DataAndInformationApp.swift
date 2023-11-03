//
//  DataAndInformationApp.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

@main
struct DataAndInformationApp: App
{
    @StateObject private var storedBuckets = BucketDataStore(buckets: loadJSON(from: "buckets2023") as! [BucketListItem])
    
    
    var body: some Scene
    {
        WindowGroup
        {
            DataView()
                .environmentObject(storedBuckets)
        }
    }
}
