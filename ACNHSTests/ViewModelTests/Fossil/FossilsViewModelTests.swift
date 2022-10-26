//
//  FossilsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class FossilsViewModelTests: XCTestCase {

    private var serviceMock: ServiceMock!
    private var fossilsViewModel: FossilViewModel!
    
    override func setUpWithError() throws {
        serviceMock = ServiceMock()
        fossilsViewModel = FossilViewModel(service: serviceMock)
    }
    
    override func tearDownWithError() throws {
        fossilsViewModel = nil
    }
    
    func testFailureGetFishes() {
        let expectation = expectation(description: "Failure to get fishes.")
        
        serviceMock.stubbedFossilResult = (
            .failure(.error)
        )
        
        fossilsViewModel.getFossilData()
        expectation.fulfill()
        
        XCTAssertEqual(1, serviceMock.invokedGetFossilsCount)
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessGetFishes() {
        let expectation = expectation(description: "Success to get recipe.")
        
        serviceMock.stubbedFossilResult = (
            .success(fossils)
        )
        
        fossilsViewModel.getFossilData()
        XCTAssertEqual(1, serviceMock.invokedGetFossilsCount)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
}
