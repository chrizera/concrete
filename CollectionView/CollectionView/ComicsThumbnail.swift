//
//  ComicsThumbnail.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import Foundation
import ObjectMapper

class ComicsThumbnail: Mappable {
    var path: String?
    var imageExtension: String?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        path <- map["path"]
        imageExtension <- map["extension"]
    }
}
