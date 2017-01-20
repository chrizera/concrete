//
//  ComicsData.swift
//  CollectionView
//
//  Created by Christian Perrone on 12/01/17.
//
//

import Foundation
import ObjectMapper

class ComicsData: Mappable {
    
    var data: ComicsResults?
    
    required init?(map: Map) { }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
}
