//
//  UfoRowView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 11/3/23.
//

import SwiftUI

struct UfoRowView: View
{
    var rowUfo: UfoItem
    var emoji: String
    
    var body: some View
    {
        NavigationLink(destination: UfoDetailView(detailedUfo: rowUfo))
        {
            HStack
            {
                Text(emoji)
                    .font(.largeTitle)
                Spacer()
                VStack
                {
                    Text("Year: \(rowUfo.year)")
                    Text("Shape: \(rowUfo.shape)")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

#Preview ("Preview of ufo row view")
{
    UfoRowView(rowUfo: demoUfo, emoji: generateRandomEmoji(of: ""))
}
