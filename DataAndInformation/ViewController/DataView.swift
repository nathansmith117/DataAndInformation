//
//  DataView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import SwiftUI

struct DataView: View
{
    @EnvironmentObject var bucketData : BucketDataStore
    @ObservedObject var coffeeData : CoffeeDataStore = CoffeeDataStore(coffee: loadJSON(from: "coffee") as! [CoffeeItem])
    @ObservedObject var ufoData : UfoDataStore = UfoDataStore(ufos: loadJSON(from: "ufo") as! [UfoItem])
    
    @State private var searchedText : String = ""
    @State private var showAddBucketListItem : Bool = false
    @State private var canShowBuckets = false
    @State private var canShowCoffee = false
    @State private var canShowUfo = false
    @State private var canShowResearch = false
    
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
                Section("Buckets!", isExpanded: $canShowBuckets)
                {
                    ForEach(filteredBucketListResults)
                    {
                        bucket in
                        
                        BucketRowView(rowBucket: bucket, emoji: generateRandomEmoji(of: ""))
                            .accessibilityLabel("Bucket Row for \(bucket.creature)")
                            .accessibilityValue("Bucket Row for \(bucket.goal) in \(bucket.year)")
                    }
                    .onDelete(perform: removeBucketItems)
                }
                Section("Coffee", isExpanded: $canShowCoffee)
                {
                    ForEach(coffeeData.coffee.indices, id: \.self)
                    {
                        index in
                        
                        CoffeeRowView(rowCoffee: coffeeData.coffee[index], emoji: generateRandomEmoji(of: ""))
                            .accessibilityLabel("Cofee row for coffee of species \(coffeeData.coffee[index].species)")
                            .accessibilityValue("Cofee row with a score of \(coffeeData.coffee[index].score) from \(coffeeData.coffee[index].country)")
                    }
                }
                Section("Ufo", isExpanded: $canShowUfo)
                {
                    ForEach(ufoData.ufos.indices, id: \.self)
                    {
                        index in
                        
                        UfoRowView(rowUfo: ufoData.ufos[index], emoji: generateRandomEmoji(of: ""))
                    }
                }
                Section("Research", isExpanded: $canShowResearch)
                {
                    NavigationLink("Random", destination: CustomPDFView(url: randomURL))
                    NavigationLink("Data Collection", destination: CustomPDFView(url: dataCollectionURL))
                }
            }
            .listStyle(SidebarListStyle())
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
        .sheet(isPresented: $showAddBucketListItem)
        {
            AddBucketListItemView(with: "add your name/creature", having: "a goal")
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
        .environmentObject(BucketDataStore(buckets: loadJSON(from: "buckets2023") as! [BucketListItem] ) )
}
