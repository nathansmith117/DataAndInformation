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
    
    @State private var searchedText : String = ""
    @State private var showAddBucketListItem : Bool = false
    
    private var filteredBucketListResults : [BucketListItem]
    {
        if (searchedText.isEmpty)
        {
            return bucketData.buckets
        }
        else
        {
            return bucketData.buckets.filter
            {
                $0.goal.lowercased().contains(searchedText.lowercased())
                ||
                $0.creature.lowercased().contains(searchedText.lowercased())
                ||
                String($0.year) == searchedText
            }
        }
    }
    
    var body: some View
    {
        NavigationStack
        {
            List
            {
                Section("Buckets!")
                {
                    ForEach(filteredBucketListResults)
                    {
                        bucket in
                        
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                    }
                    .onDelete(perform: removeBucketItems)
                }
            }
            .searchable(text: $searchedText)
            .navigationTitle("Data and Information")
            .toolbar
            {
                ToolbarItem(placement: .topBarLeading)
                {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing)
                {
                    Button (action: { self.showAddBucketListItem.toggle()} )
                    {
                        Image(systemName: "plus")
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
