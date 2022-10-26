//
//  BugViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class BugViewModelTests: XCTestCase {
    
    private var serviceMock: ServiceMock!
    private var bugsViewModel: BugViewModel!
    
    override func setUpWithError() throws {
        serviceMock = ServiceMock()
        bugsViewModel = BugViewModel(service: serviceMock)
    }
    
    override func tearDownWithError() throws {
        bugsViewModel = nil
    }
    
    func testFailureGetFishes() {
        let expectation = expectation(description: "Failure to get fishes.")
        
        serviceMock.stubbedBugResult = (
            .failure(.error)
        )
        
        bugsViewModel.getBugData()
        expectation.fulfill()
        
        XCTAssertEqual(1, serviceMock.invokedGetBugsCount)
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessGetFishes() {
        let expectation = expectation(description: "Success to get recipe.")
        
        serviceMock.stubbedBugResult = (
            .success(bugs)
        )
        
        bugsViewModel.getBugData()
        XCTAssertEqual(1, serviceMock.invokedGetBugsCount)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    //    TODO: - Make the two tests below.
    func testMakeBugsFromTheNorthernHemisphere() {
        serviceMock.stubbedBugResult = (
            .success(bugs)
        )
        bugsViewModel.getBugData()
        XCTAssertEqual(1, serviceMock.invokedGetBugsCount)
    }
    
    func testMakeBugsFromTheSouthernHemisphere() {
        serviceMock.stubbedBugResult = (
            .success(bugs)
        )
        bugsViewModel.getBugData()
        XCTAssertEqual(1, serviceMock.invokedGetBugsCount)
    }
}
