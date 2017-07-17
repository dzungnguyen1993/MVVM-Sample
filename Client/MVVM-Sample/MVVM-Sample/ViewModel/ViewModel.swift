//
//  ViewModel.swift
//  MVVM-Sample
//
//  Created by Thanh-Dung Nguyen on 7/16/17.
//  Copyright © 2017 Thanh-Dung Nguyen. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    var girls: [Girl]?
    typealias FetchGirlsCompletion = ((_ isSuccess: Bool) -> Void)
    
    func fetchGirls(completion: @escaping FetchGirlsCompletion) {
        NetworkManager.shared.requestGetInfo { (isSuccess, data) in
            if isSuccess {
                // success
                if let response = GetInfoResponse(JSON: data as! [String: Any]) {
                    if response.status == 1 {
                        self.girls = response.girls
                        
                        completion(true)
                    }
                } else {
                    completion(false)
                }
            } else {
                completion(false)
            }
        }
    }
}
