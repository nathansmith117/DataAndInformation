//
//  CoffeeRowView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/26/23.
//

import SwiftUI

struct CoffeeRowView: View
{
    var rowCoffee: CoffeeItem
    var emoji: String
    
    var body: some View
    {
        NavigationLink(destination: CoffeeDetailView(detailedCoffee: rowCoffee))
        {
            HStack
            {
                Text(emoji)
                    .font(.largeTitle)
                Spacer()
                VStack
                {
                    Text("Year: \(rowCoffee.year)")
                    Text(rowCoffee.species)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
    }
}

#Preview ("Coffee Row")
{
    CoffeeRowView(rowCoffee: demoCoffee, emoji: generateRandomEmoji(of: ""))
}
