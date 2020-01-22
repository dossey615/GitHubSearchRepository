//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/22.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

struct Repository : Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User
    
    enum CodingKeys : String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
