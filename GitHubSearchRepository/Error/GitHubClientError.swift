//
//  GitHubClientError.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/23.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

enum GitHubClientError : Error {
    // 通信に失敗
    case connectionError(Error)
    
    // レスポンスからの解釈に失敗
    case responseParseError(Error)
    
    // APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
