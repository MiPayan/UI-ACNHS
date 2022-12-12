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
    private var currentCalendarMock: CurrentCalendarMock!
    private var fishesViewModel: FishViewModel!
    
    override func setUpWithError() throws {
        serviceMock = ServiceMock()
        currentCalendarMock = CurrentCalendarMock()
        fishesViewModel = FishViewModel(
            service: serviceMock,
            mainDispatchQueue: DispatchQueueMock(),
            currentCalendar: currentCalendarMock
        )
    }
    
    override func tearDownWithError() throws {
        currentCalendarMock = nil
        fishesViewModel = nil
        serviceMock = nil
    }
    
    func testFailureGetFishes() {
        let expectation = expectation(description: "Failure to get fishes.")
        serviceMock.stubbedFishResult = (
            .failure(.error)
        )
        
        fishesViewModel.getFishData()
        
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessGetFishes() {
        let expectation = expectation(description: "Success to get fishes.")
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
        let expectation = expectation(description: "Sort fish from the northern hemisphere.")
        currentCalendarMock.stubbedMakeCurrentCalendar = {
            (11, 12)
        }()
        
        serviceMock.stubbedFishResult = (
            .success(fishes)
        )
        
        fishesViewModel.getFishData()
        let currentFishes = fishesViewModel.makeFishesFromTheNorthernHemisphere()
        
        XCTAssertEqual(1, currentCalendarMock.invockedMakeCurrentCalendarCount)
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
        XCTAssertEqual(currentFishes.count, 25)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testMakeFishesFromTheSouthernHemisphere() {
        let expectation = expectation(description: "Sort fish from the southern hemisphere.")
        currentCalendarMock.stubbedMakeCurrentCalendar = {
            (11, 12)
        }()
        
        serviceMock.stubbedFishResult = (
            .success(fishes)
        )
        
        fishesViewModel.getFishData()
        let currentFishes = fishesViewModel.makeFishesFromTheSouthernHemisphere()
        
        XCTAssertEqual(1, currentCalendarMock.invockedMakeCurrentCalendarCount)
        XCTAssertEqual(1, serviceMock.invokedGetFishesCount)
        XCTAssertEqual(currentFishes.count, 39)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
}
