//
//  BucketListItem.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import Foundation

struct BucketListItem : Codable, Identifiable
{
    var id: UUID = UUID()
    var year: Int
    var goal: String
    var creature: String
}
