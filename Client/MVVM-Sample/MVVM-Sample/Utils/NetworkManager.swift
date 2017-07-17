//
//  NetworkManager.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import Alamofire

enum RequestType: String {
    case getInfo = "getInfo"
}

class NetworkManager: NSObject {
    typealias ResponseCompletion = ((_ isSuccess: Bool, _ response: Any?) -> Void)
    
    let hostAddress = "https://mvvm-sample.herokuapp.com/"
    
    static let shared = NetworkManager()
    
    private override init() {
        
    }
    
    func requestGET(typeOf type: RequestType, parameters: Parameters, completion: @escaping ResponseCompletion) {
        let requestString = hostAddress + type.rawValue
        
        let manager = Alamofire.SessionManager.default
        manager.session.configuration.timeoutIntervalForRequest = 10
        
        manager.request(requestString, method: .get, parameters: parameters).responseJSON { (response) in
            completion(response.result.isSuccess, response.result.value)
        }
    }
    
    // MARK: Requests
    func requestGetInfo(completion: @escaping ResponseCompletion) {
        let parameters: Parameters = [:]
        
        self.requestGET(typeOf: .getInfo, parameters: parameters, completion: completion)
    }
}
