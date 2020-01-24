//
//  Result.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/24.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

enum Result<T, Error : Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
