//
//  Date+Extensions.swift
//  ios-dca-calculator
//
//  Created by manan gandhi on 4/17/24.
//

import Foundation

extension Date {
    
    var MMYYFormat: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM yyyy"
        return dateFormatter.string(from: self)
    }
    
}
