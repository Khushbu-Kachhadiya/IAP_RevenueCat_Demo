//
//  API.swift
//  e-vehicle-charging
//
//  Created by Developer1 on 10/04/24.
//

import Foundation

// MARK: - API
enum API {
    case fetchGracePeriodData(username:String)
}

// MARK: - APIProtocol
extension API: APIProtocol {
    var baseURL: String {
        switch self {
        case .fetchGracePeriodData:
            return "https://api.revenuecat.com/v1/"
        }
    }
    
    var path: String {
        switch self {
        case .fetchGracePeriodData(username: let username):
            return "subscribers/\(username)"
        }
    }
    
    var method: APIMethod {
        switch self {
        case .fetchGracePeriodData:
            return .get
        }
    }
    
    var task: Request {
        switch self {
        case .fetchGracePeriodData:
            return .requestPlain
        }
    }
    
    var header: [String: String] {
        switch self {
        case .fetchGracePeriodData:
            return ["Authorization": Constants.apiKey,
                    "Content-Type": "application/json"]
        }
    }
}
