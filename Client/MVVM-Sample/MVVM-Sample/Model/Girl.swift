//
//  Girl.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import ObjectMapper

class Girl: Mappable {
    var id: Int?
    var name: String = ""
    var photo: String = ""
    
    required convenience init(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        photo <- map["photo"]
    }
}
