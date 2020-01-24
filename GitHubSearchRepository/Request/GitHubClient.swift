//
//  GitHubClient.swift
//  GitHubSearchRepository
//
//  Created by 土居将史 on 2020/01/24.
//  Copyright © 2020 土居将史. All rights reserved.
//

import Foundation

class GitHubClient {
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    func send<Request : GitHubRequest>(
        request: Request,
        completion: @escaping (Result<Request.Response, GitHubClientError>) -> Void) {
        let urlRequest = request.buildURLRequest()
        let task = session.dataTask(with: urlRequest) {
            data, response, error in
            
            switch (data, response, error) {
            case (_, _, let error?):
                completion(Result(error: .connectionError(error)))
            case (let data?, let response?, _):
            do {
                let response = try request.response(
                    from: data, urlResponse: response)
                completion(Result(value: response))
            } catch let error as GitHubAPIError {
                completion(Result(error: .apiError(error)))
            } catch {
                completion(Result(error: .responseParseError(error)))
                }
            default:
                fatalError("invalid response combination\(data), \(response), \(error).")
            }
        }
        
        task.resume()
    }
}
