//
//  Utilities.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/24/23.
//

import Foundation

let demoBucket: BucketListItem = BucketListItem(year: 2000, goal: "do stuff", creature: "yo momma")

func randomString() -> String
{
    let choice = arc4random()

    if (choice % 4 == 0)
    {
        return "face"
    }
    else if (choice % 4 == 1)
    {
        return "symbol"
    }
    else if (choice % 4 == 2)
    {
        return "face-negative"
    }
    else
    {
        return ""
    }
}

func generateRandomEmoji(of emojiType: String) -> String
{
    let defaultEmoji = "💩"
    let start : Int
    let range : Int

    if (emojiType == "face")
    {
        start = 0x1F601
        range = 79
    }
    else if (emojiType == "symbol")
    {
        start = 0x1F680
        range = 70
    }
    else if (emojiType == "face-negative")
    {
        start = 0x1F624
        range = 8
    }
    else
    {
        start = 0x1F400
        range = 52
    }

    let unicodeValue = start + Int(arc4random_uniform(UInt32(range)))
    let currentEmoji = UnicodeScalar(unicodeValue)?.description ?? defaultEmoji

    return currentEmoji
}

