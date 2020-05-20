//
//  Extensions.swift
//  restaurant-ios
//
//  Created by Abraao on 20/05/20.
//  Copyright © 2020 Abraao. All rights reserved.
//

import Foundation

extension NSNumber {
    func toPrice() -> String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        
        if let priceString = currencyFormatter.string(from: self) {
            return priceString
        }

        return currencyFormatter.string(from: 0)!
    }
}

extension Double {
    func toPrice() -> String {
        return (self as NSNumber).toPrice()
    }
}

extension Float {
    func toPrice() -> String {
        return (self as NSNumber).toPrice()
    }
}
