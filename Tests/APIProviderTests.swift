//
//  APIProviderTests.swift
//  AppStoreConnect-Swift-SDK
//
//  Created by Michael Schwarz on 07.03.19.
//

import XCTest
@testable import AppStoreConnect_Swift_SDK

final class APIProviderTests: XCTestCase {

    private struct MockRequestExecutor<T:Codable>: RequestExecutor {

        let expectedResponse: Result<Response<T>, Swift.Error>

        init(expectedResponse: Result<Response<T>, Swift.Error>) {
            self.expectedResponse = expectedResponse
        }

        func execute(_ urlRequest: URLRequest, completion: @escaping (Result<Response<Data>, Swift.Error>) -> Void) {
            if let response = expectedResponse as? Result<Response<Data>, Swift.Error> {
                completion(response)
            }
        }

        func retrieve(_ url: URL, completion: @escaping (Result<Response<Data>, Swift.Error>) -> Void) {
            if let response = expectedResponse as? Result<Response<Data>, Swift.Error> {
                completion(response)
            }
        }

        func download(_ urlRequest: URLRequest, completion: @escaping (Result<Response<URL>, Error>) -> Void) {
            if let response = expectedResponse as? Result<Response<URL>, Swift.Error> {
                completion(response)
            }
        }

    }

    private var configuration: APIConfiguration!

    override func setUp() async throws {
        // swiftlint:disable:next line_length
        let privateKey = "MIGTAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBHkwdwIBAQQgPaXyFvZfNydDEjxgjUCUxyGjXcQxiulEdGxoVbasV3GgCgYIKoZIzj0DAQehRANCAASflx/DU3TUWAoLmqE6hZL9A7i0DWpXtmIDCDiITRznC6K4/WjdIcuMcixy+m6O0IrffxJOablIX2VM8sHRscdr"
        configuration = try APIConfiguration(issuerID: UUID().uuidString,
                                             privateKeyID: UUID().uuidString,
                                             privateKey: privateKey)
    }

    // MARK: - Tests

    func testCustomerAPIPath() {
        let request = APIEndpoint
            .v1
            .apps
            .id("123")
            .customerReviews
            .get(parameters: .init(
                sort: [.minuscreatedDate]
            ))
        XCTAssertEqual(request.path, "/v1/apps/123/customerReviews")
    }
}
