//
//  Router.swift
//  RxAlamofire-Bug-Sample
//
//  Created by a on 6/13/17.
//  Copyright © 2017 Kizito Nwose. All rights reserved.
//

import Foundation
import Alamofire

enum ApiRouter: URLRequestConvertible {
    
    case user(withId: String)
    
    var baseURL: String {
        return "http://example.com"
    }
    
    var path: String {
        switch self {
        case .user(let id):
            return "/users/\(id)"
        }
        
    }
    
    var method: HTTPMethod {
        switch self {
        case .user:
            return .get
        }
    }
    
    
    func asURLRequest() throws -> URLRequest {
        let URL = try baseURL.asURL()
        
        var urlRequest = URLRequest(url: URL.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        return urlRequest
    }
    
}


