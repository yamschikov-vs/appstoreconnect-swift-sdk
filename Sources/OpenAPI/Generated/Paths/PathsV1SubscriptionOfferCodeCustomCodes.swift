// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionOfferCodeCustomCodes: SubscriptionOfferCodeCustomCodes {
		SubscriptionOfferCodeCustomCodes(path: path + "/subscriptionOfferCodeCustomCodes")
	}

	public struct SubscriptionOfferCodeCustomCodes {
		/// Path: `/v1/subscriptionOfferCodeCustomCodes`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionOfferCodeCustomCodeCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeCustomCodeResponse> {
			.post(path, body: body)
		}
	}
}