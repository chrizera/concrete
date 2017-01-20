//
//  CharacterResults.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import Foundation
import ObjectMapper

class CharacterResults: Mappable{
    
    var results: [Character]?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        results <- map["results"]
    }
}
