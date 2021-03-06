//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/23.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        
        let keyword: String
        
        // GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>
        
        var method: HTTPMethod {
            return .get
        }
        
        var path: String {
            return "/search/repositories"
        }
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
