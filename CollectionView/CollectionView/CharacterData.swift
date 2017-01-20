//
//  CharacterData.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import Foundation
import ObjectMapper

class CharacterData: Mappable {
    var data: CharacterResults?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
}
