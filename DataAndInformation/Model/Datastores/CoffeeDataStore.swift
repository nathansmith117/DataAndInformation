//
//  CoffeeDataStore.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 11/1/23.
//

import Foundation

class CoffeeDataStore : ObservableObject
{
    @Published var coffee : [CoffeeItem]
    
    init (coffee : [CoffeeItem] = [])
    {
        self.coffee = coffee
    }
}
