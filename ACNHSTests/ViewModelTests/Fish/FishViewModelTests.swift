//
//  FishViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 24/10/2022.
//

import XCTest
@testable import ACNHS

final class FishViewModelTests: XCTestCase {
    
    private var serviceMock: ServiceMock!
    private var fishesViewModel: FishViewModel!
    
    override func setUpWithError() throws {
        serviceMock = ServiceMock()
        fishesViewModel = FishViewModel(service: serviceMock)
    }
    
    override func tearDownWithError() throws {
        fishesViewModel = nil
    }
    
    func testFailureGetFishes() {
        let expectation = expectation(description: "Failure to get fishes.")
        
        serviceMock.stubbedFishResult = (
            .failure(.error)
        )
        
        fishesViewModel.getFishData()
        expectation.fulfill()
        
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessGetFishes() {
        let expectation = expectation(description: "Success to get recipe.")
        
        serviceMock.stubbedFishResult = (
            .success(fishes)
        )
        
        fishesViewModel.getFishData()
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    //    TODO: - Make the two tests below.
    func testMakeFishesFromTheNorthernHemisphere() {
        serviceMock.stubbedFishResult = (
            .success(fishes)
        )
        fishesViewModel.getFishData()
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
    }
    
    func testMakeFishesFromTheSouthernHemisphere() {
        serviceMock.stubbedFishResult = (
            .success(fishes)
        )
        fishesViewModel.getFishData()
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
    }
}
