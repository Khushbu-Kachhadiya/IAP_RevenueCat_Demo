//
//  APIService.swift
//  e-vehicle-charging
//
//  Created by Developer1 on 10/04/24.
//

import Foundation

enum APIService {
//    static func request<T: Codable>(_ rout: APIProtocol) async throws -> T {
//        let (data, res) = try await URLSession.shared.data(for: rout.asURLRequest())
//        let statusCode = (res as? HTTPURLResponse)?.statusCode ?? 400
//        switch statusCode {
//        case 200 ... 299:
//            let result = try JSONDecoder().decode(T.self, from: data)
//            if let success = result.asDictionary?["success"] as? Bool, success {
//                return result
//            } else {
//                if let errorModel = result.asDictionary?["message"] as? [String:String], let message = errorModel["message"], let title = errorModel["title"] {
//                    throw APIError.responseError(title: title, error: message)
//                } else {
//                    throw APIError.badRequest
//                }
//            }
//        case 500:
//            throw APIError.internalServerError
//        default:
//            let result = try JSONDecoder().decode(T.self, from: data)
//            if let success = result.asDictionary?["success"] as? Bool, success {
//                return result
//            } else {
//                if let errorModel = result.asDictionary?["message"] as? [String:String], let message = errorModel["message"], let title = errorModel["title"] {
//                    if message.uppercased() == "Unauthorized".uppercased() {
//                        throw APIError.responseError(title: title, error: message)
//                    }else{
//                        throw APIError.responseError(title: title, error: message)
//                    }
//                } else {
//                    throw APIError.badRequest
//                }
//            }
//        }
//    }
    
    static func request<T: Codable>(_ rout: APIProtocol) async throws -> T {
        let (data, res) = try await URLSession.shared.data(for: rout.asURLRequest())
        let statusCode = (res as? HTTPURLResponse)?.statusCode ?? 400
        switch statusCode {
        case 200 ... 299:
            let result = try JSONDecoder().decode(T.self, from: data)
            return result
        default:
            throw APIError.badRequest
        }
    }
}
