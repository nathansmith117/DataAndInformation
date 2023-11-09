//
//  CoffeeDetailView.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/26/23.
//

import SwiftUI

struct CoffeeDetailView: View
{
    var detailedCoffee: CoffeeItem
    
    var body: some View
    {
        VStack
        {
            Image("pepeCoffee")
                .resizable()
            Text("Country: \(detailedCoffee.country)")
            Text("Year: \(detailedCoffee.year)")
            Text("Species: \(detailedCoffee.species)")
            Text("Score: \(detailedCoffee.score)")
            Text("Color: \(detailedCoffee.color)")
        }
    }
}

#Preview ("Preview of a CoffeeItem")
{
    CoffeeDetailView(detailedCoffee: demoCoffee)
}
