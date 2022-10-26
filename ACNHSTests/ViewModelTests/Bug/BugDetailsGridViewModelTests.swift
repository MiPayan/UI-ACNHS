//
//  BugDetailsGridViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class BugDetailsGridViewModelTests: XCTestCase {

    private var bugDetailsGridViewModel: BugDetailsGridViewModel!
    
    override func setUpWithError() throws {
        bugDetailsGridViewModel = BugDetailsGridViewModel(bug: bugs[0])
    }
    
    override func tearDownWithError() throws {
        bugDetailsGridViewModel = nil
    }
    
    func testPrice() {
        guard let price = bugs.first?.price else { return }
        XCTAssertEqual(price, 160)
        XCTAssertEqual(bugDetailsGridViewModel.price, String(price))
    }
    
    func testAvailabilityLocation() {
        guard let location = bugs.first?.availability.location else { return }
        XCTAssertEqual(location, "Flying")
        XCTAssertEqual(bugDetailsGridViewModel.availabilityLocation, location)
    }
    
    func testAvailabilityTime() {
        guard let availabilityTime = bugs.first?.availability.time else { return }
        XCTAssertEqual(availabilityTime, "4am - 7pm")
        XCTAssertEqual(bugDetailsGridViewModel.availabilityTime, availabilityTime)
    }
    
    func testRarity() {
        guard let rarity = bugs.first?.availability.rarity else { return }
        XCTAssertEqual(rarity, "Common")
        XCTAssertEqual(bugDetailsGridViewModel.rarity, rarity)
    }
    
    func testNorthernHemisphereAvailability() {
        guard let monthNorthern = bugs.first?.availability.monthNorthern else { return }
        XCTAssertEqual(monthNorthern, "9-6")
        XCTAssertEqual(bugDetailsGridViewModel.northernHemisphereAvailability, monthNorthern)
    }
    
    func testSouthernHemisphereAvailability() {
        guard let monthSouthern = bugs.first?.availability.monthSouthern else { return }
        XCTAssertEqual(monthSouthern, "3-12")
        XCTAssertEqual(bugDetailsGridViewModel.southernHemisphereAvailability, monthSouthern)
    }
}
