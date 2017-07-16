//
//  GetInfoResponse.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import ObjectMapper

class GetInfoResponse: Mappable {
    var status: Int = 0
    var girls: [Girl]?
    
    required convenience init(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        girls <- map["girls"]
    }
}
