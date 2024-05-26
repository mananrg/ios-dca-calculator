//
//  SearchResults.swift
//  ios-dca-calculator
//
//  Created by manan gandhi on 3/14/24.
//

import Foundation

struct SearchResults: Decodable {
    let items: [SearchResult]
    enum CodingKeys: String, CodingKey {
        case items = "bestMatches"
    }
}

struct SearchResult: Decodable {
    
    let symbol: String
    let name: String
    let type: String
    let currency: String
    
    enum CodingKeys: String, CodingKey {
        case symbol = "1. symbol"
        case name = "2. name"
        case type = "3. type"
        case currency = "8. currency"
    }
}
//import Foundation
//
//struct SearchResponseWrapper: Decodable {
//    let searchResults: SearchResults
//
//    enum CodingKeys: String, CodingKey {
//        case searchResults = "bestMatches"
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        searchResults = try container.decode(SearchResults.self)
//    }
//}
//
//struct SearchResults: Decodable {
//    let items: [SearchResult]
//
//    enum CodingKeys: String, CodingKey {
//        case items = "bestMatches"
//    }
//}
//
//struct SearchResult: Decodable {
//    let symbol: String
//    let name: String
//    let type: String
//    let currency: String
//
//    enum CodingKeys: String, CodingKey {
//        case symbol = "1. symbol"
//        case name = "2. name"
//        case type = "3. type"
//        case currency = "8. currency"
//    }
//}
