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
        ZStack
        {
            Image("pepeCoffee")
                .resizable()
            VStack
            {
                Text("Country: \(detailedCoffee.country)")
                    .colorInvert()
                Text("Year: \(detailedCoffee.year)")
                    .colorInvert()
                Text("Species: \(detailedCoffee.species)")
                    .colorInvert()
                Text("Score: \(detailedCoffee.score)")
                    .colorInvert()
                Text("Color: \(detailedCoffee.color)")
                    .colorInvert()
        }
        }
    }
}

#Preview ("Preview of a CoffeeItem")
{
    CoffeeDetailView(detailedCoffee: demoCoffee)
}
