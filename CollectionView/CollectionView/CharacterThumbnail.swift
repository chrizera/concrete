//
//  CharacterThumbnail.swift
//  CollectionView
//
//  Created by Christian Perrone on 10/01/17.
//
//

import Foundation
import ObjectMapper

class CharacterThumbnail: Mappable {
    
    var path: String?
    var imageExtension: String?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        path <- map["path"]
        imageExtension <- map["extension"]
    }
}
