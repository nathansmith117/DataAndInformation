//
//  AddBucketListItemView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/30/23.
//

import SwiftUI

struct AddBucketListItemView: View
{
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var storedBuckets : BucketDataStore
    @State private var author : String = ""
    @State private var bucketListItem : String = ""
    
    init (with author : String, having item : String)
    {
        _author = State(initialValue: author)
        _bucketListItem = State(initialValue: item)
    }
    
    var body: some View
    {
        Form
        {
            Section("Make a new BucketListItem")
            {
                InputField(title: "Creature Who Made it!", hint: "creature", result: $author)
                    .accessibilityLabel("Input for the creature creating the bucket list item")
                    .accessibilityValue("Put your name, your pets name, favorite mythical creature...");
                InputField(title: "Goal", hint: "What do you wanno do?", result: $bucketListItem)
                    .accessibilityLabel("Input for your goal")
                    .accessibilityValue("Put your goal")
            }
            if (!author.isEmpty && !bucketListItem.isEmpty)
            {
                Button("Add Me To the List!!!", action: addBucketItemToDataStore)
            }
        }
    }
    
    private func addBucketItemToDataStore() -> Void
    {
        let year = Calendar.current.component(.year, from: Date())
        let newBucketListItem = BucketListItem(year: year, goal: bucketListItem, creature: author)
        storedBuckets.buckets.insert(newBucketListItem, at: 0)
        dismiss()
    }
}

#Preview ("Add a Bucket List Item!")
{
    AddBucketListItemView(with : "your mom", having: "learn to code")
}
