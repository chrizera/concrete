//
//  Comics.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import Foundation
import ObjectMapper

class Comics: Mappable{
    
    var title: String?
    var description: String?
    var thumbnail: ComicsThumbnail?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        title <- map["title"]
        description <- map["description"]
        thumbnail <- map["thumbnail"]
    }
}
