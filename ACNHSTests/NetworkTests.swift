//
//  NetworkTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 24/10/2022.
//

import XCTest
@testable import ACNHS

final class NetworkTests: XCTestCase {
    
    private var networking: Networking!
    private var dataMock: DataMock!
    
    override func setUpWithError() throws {
        dataMock = DataMock()
        networking = Networking()
    }
    
    override func tearDownWithError() throws {
        networking = nil
        dataMock = nil
    }
    
    func testFailureService() {
        let expectation = expectation(description: "Failure to get data.")
        let service = ACNHService(session: networking)
        dataMock.response = dataMock.invalidResponse
        dataMock.result = (
            .failure(.error)
        )
        
        service.getFishData { result in
            switch result {
            case .success(_):
                XCTFail()
            case .failure(let error):
                XCTAssertNotNil(error)
            }
        }
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessService() {
        let expectation = expectation(description: "Success to get data.")
        let service = ACNHService(session: networking)
        dataMock.response = dataMock.validResponse
        dataMock.result = (
            .success(fishes)
        )
        
        service.getFishData { result in
            switch result {
            case .success(let success):
                XCTAssertNotNil(success)
            case .failure(_):
                XCTFail()
            }
        }
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
}
