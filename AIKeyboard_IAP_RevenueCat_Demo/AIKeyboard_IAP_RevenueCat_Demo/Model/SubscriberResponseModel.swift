//
//  SubscriberResponseModel.swift
//  AIKeyboard_IAP_RevenueCat_Demo
//
//  Created by Developer on 25/06/24.
//

import Foundation

struct SubscriberResponseModel: Codable {
    let requestDate: String?
    let requestDateMS: Int?
    let subscriber: Subscriber?

    enum CodingKeys: String, CodingKey {
        case requestDate = "request_date"
        case requestDateMS = "request_date_ms"
        case subscriber
    }
}

// MARK: - Subscriber
struct Subscriber: Codable {
    let entitlements: Entitlements?
    let firstSeen, lastSeen: String?
    let managementURL: String?
    let nonSubscriptions: NonSubscriptions?
    let originalAppUserID, originalApplicationVersion: String?
    let originalPurchaseDate: String?
    let otherPurchases: NonSubscriptions?
    let subscriptions: Subscriptions?

    enum CodingKeys: String, CodingKey {
        case entitlements
        case firstSeen = "first_seen"
        case lastSeen = "last_seen"
        case managementURL = "management_url"
        case nonSubscriptions = "non_subscriptions"
        case originalAppUserID = "original_app_user_id"
        case originalApplicationVersion = "original_application_version"
        case originalPurchaseDate = "original_purchase_date"
        case otherPurchases = "other_purchases"
        case subscriptions
    }
}

// MARK: - Entitlements
struct Entitlements: Codable {
    let aiKeyboardPro: AIKeyboardPro?

    enum CodingKeys: String, CodingKey {
        case aiKeyboardPro = "AI-KeyboardPro"
    }
}

// MARK: - AIKeyboardPro
struct AIKeyboardPro: Codable {
    let expiresDate: String?
    let gracePeriodExpiresDate: String?
    let productIdentifier: String?
    let purchaseDate: String?

    enum CodingKeys: String, CodingKey {
        case expiresDate = "expires_date"
        case gracePeriodExpiresDate = "grace_period_expires_date"
        case productIdentifier = "product_identifier"
        case purchaseDate = "purchase_date"
    }
}

// MARK: - NonSubscriptions
struct NonSubscriptions: Codable {
}

// MARK: - Subscriptions
struct Subscriptions: Codable {
    let monthly, weekly: Monthly?

    enum CodingKeys: String, CodingKey {
        case monthly = "Monthly"
        case weekly = "Weekly"
    }
}

// MARK: - Monthly
struct Monthly: Codable {
    let autoResumeDate, billingIssuesDetectedAt: String?
    let expiresDate: String?
    let gracePeriodExpiresDate: String?
    let isSandbox: Bool?
    let originalPurchaseDate: String?
    let ownershipType, periodType: String?
    let purchaseDate: String?
    let refundedAt: String?
    let store, storeTransactionID: String?
    let unsubscribeDetectedAt: String?

    enum CodingKeys: String, CodingKey {
        case autoResumeDate = "auto_resume_date"
        case billingIssuesDetectedAt = "billing_issues_detected_at"
        case expiresDate = "expires_date"
        case gracePeriodExpiresDate = "grace_period_expires_date"
        case isSandbox = "is_sandbox"
        case originalPurchaseDate = "original_purchase_date"
        case ownershipType = "ownership_type"
        case periodType = "period_type"
        case purchaseDate = "purchase_date"
        case refundedAt = "refunded_at"
        case store
        case storeTransactionID = "store_transaction_id"
        case unsubscribeDetectedAt = "unsubscribe_detected_at"
    }
}
