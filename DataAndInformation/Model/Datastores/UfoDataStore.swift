//
//  UfoDataStore.swift
//  DataAndInformation
//
//  Created by Smith, Nathanael on 11/3/23.
//

import Foundation

class UfoDataStore : ObservableObject
{
    @Published var ufos : [UfoItem]
    
    init (ufos : [UfoItem] = [])
    {
        self.ufos = ufos
    }
}
