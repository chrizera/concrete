//
//  Character.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import Foundation
import ObjectMapper

class Character: Mappable {
    
    var name: String?
    var description: String?
    var thumbnail: CharacterThumbnail?
    var id: Int?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        name <- map["name"]
        description <- map["description"]
        thumbnail <- map["thumbnail"]
        id <- map["id"]
    }
}
