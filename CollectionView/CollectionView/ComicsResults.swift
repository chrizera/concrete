//
//  ComicsResults.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import Foundation
import ObjectMapper

class ComicsResults: Mappable {
    
    var results: [Comics]?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        results <- map["results"]
    }
}
