//
//  CoffeeListItem.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/26/23.
//

import Foundation

struct CoffeeItem : Codable
{
    var country: String
    var year: Int
    var species: String
    var score: Double
    var color: String
}
