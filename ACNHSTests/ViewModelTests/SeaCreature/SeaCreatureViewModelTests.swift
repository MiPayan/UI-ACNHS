//
//  SeaCreaturesViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class SeaCreatureViewModelTests: XCTestCase {
    
    private var serviceMock: ServiceMock!
    private var seaCreaturesViewModel: SeaCreatureViewModel!
    
    override func setUpWithError() throws {
        serviceMock = ServiceMock()
        seaCreaturesViewModel = SeaCreatureViewModel(service: serviceMock)
    }
    
    override func tearDownWithError() throws {
        seaCreaturesViewModel = nil
    }
    
    func testFailureGetFishes() {
        let expectation = expectation(description: "Failure to get fishes.")
        
        serviceMock.stubbedSeaCreatureResult = (
            .failure(.error)
        )
        
        seaCreaturesViewModel.getSeaCreatureData()
        expectation.fulfill()
        
        XCTAssertEqual(1, serviceMock.invokedGetSeaCreaturesCount)
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    func testSuccessGetFishes() {
        let expectation = expectation(description: "Success to get recipe.")
        
        serviceMock.stubbedSeaCreatureResult = (
            .success(seaCreatures)
        )
        
        seaCreaturesViewModel.getSeaCreatureData()
        XCTAssertEqual(1, serviceMock.invokedGetSeaCreaturesCount)
        expectation.fulfill()
        waitForExpectations(timeout: 1, handler: nil)
    }
    
    //    TODO: - Make the two tests below.
    func testMakeSeaCreatureFromTheNorthernHemisphere() {
        serviceMock.stubbedSeaCreatureResult = (
            .success(seaCreatures)
        )
        seaCreaturesViewModel.getSeaCreatureData()
        XCTAssertEqual(1, serviceMock.invokedGetSeaCreaturesCount)
    }
    
    func testMakeSeaCreatureFromTheSouthernHemisphere() {
        serviceMock.stubbedSeaCreatureResult = (
            .success(seaCreatures)
        )
        seaCreaturesViewModel.getSeaCreatureData()
        XCTAssertEqual(1, serviceMock.invokedGetSeaCreaturesCount)
    }
}
