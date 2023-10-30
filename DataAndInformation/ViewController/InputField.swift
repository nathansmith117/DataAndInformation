//
//  InputField.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 10/30/23.
//

import SwiftUI

struct InputField: View
{
    let title : String
    let hint : String
    
    @Binding var result : String
    
    var body: some View
    {
        Text(title)
            .font(.headline)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        TextField(hint, text: $result)
            .autocorrectionDisabled()
    }
}

#Preview ("Input Field Demo")
{
    InputField(title: "The title", hint: "the hint!", result: .constant("The bound value"))
}
