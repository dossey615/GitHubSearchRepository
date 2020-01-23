//
//  GitHubAPIError.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/23.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

struct GitHubAPIError : Decodable, Error {
    struct FieldError : Decodable {
        let resource: String
        let field: String
        let code: String
    }
    
    let message: String
    let fieldErrors: [FieldError]
}
