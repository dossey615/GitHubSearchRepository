//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/22.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

struct SearchResponse<Item : Decodable> : Decodable {
    let totalCount: Int
    let items: [Item]
    
    enum CodingKeys : String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
