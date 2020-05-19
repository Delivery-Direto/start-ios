//
//  NetworkManager.swift
//  restaurant-ios
//
//  Created by Abraao on 19/05/20.
//  Copyright © 2020 Abraao. All rights reserved.
//

import Foundation
import Alamofire

class NetworkManager: NSObject {

    private enum NetworkPath: String {
        case restaurant
        case menu
        case paymentMethods = "payment-methods"
        case openingHours = "opening-hours"

        static let baseURL = "https://my-json-server.typicode.com/delivery-direto/sample-api/"
        
        var url: String {
            return NetworkPath.baseURL + self.rawValue
        }
    }
    
    func getRestaurant(completion: @escaping (Restaurant?) -> Void) {
        AF.request(NetworkPath.restaurant.url).response { (response) in
            // Your code here
        }
    }
    
}
