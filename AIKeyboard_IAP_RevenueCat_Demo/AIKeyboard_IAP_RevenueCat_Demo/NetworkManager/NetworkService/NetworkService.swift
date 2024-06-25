//
//  NetworkService.swift
//  AIKeyboard_IAP_RevenueCat_Demo
//
//  Created by Developer on 25/06/24.
//

import Foundation

protocol NetworkService {
    func fetchGracePeriodData(username: String) async throws -> SubscriberResponseModel
    
}

final class NetworkManager: NetworkService {
    func fetchGracePeriodData(username: String) async throws -> SubscriberResponseModel {
        return try await APIService.request(API.fetchGracePeriodData(username: username))
    }
}
