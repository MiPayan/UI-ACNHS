//
//  FishDetailsGridViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class FishDetailsGridViewModelTests: XCTestCase {
    
    private var fishDetailsGridViewModel: FishDetailsGridViewModel!
    
    override func setUpWithError() throws {
        fishDetailsGridViewModel = FishDetailsGridViewModel(fish: fishes[0])
    }
    
    override func tearDownWithError() throws {
        fishDetailsGridViewModel = nil
    }
    
    func testPrice() {
        guard let price = fishes.first?.price else { return }
        XCTAssertEqual(price, 900)
        XCTAssertEqual(fishDetailsGridViewModel.price, String(price))
    }
    
    func testAvailabilityLocation() {
        guard let location = fishes.first?.availability.location else { return }
        XCTAssertEqual(location, "River")
        XCTAssertEqual(fishDetailsGridViewModel.availabilityLocation, location)
    }
    
    func testShadow() {
        guard let shadow = fishes.first?.shadow else { return }
        XCTAssertEqual(shadow, "Smallest (1)")
        XCTAssertEqual(fishDetailsGridViewModel.shadow, shadow)
    }
 
    func testAvailabilityTime() {
        guard let time = fishes.first?.availability.time else { return }
        XCTAssertEqual(time, "")
        
        let availabilityTime = time.isEmpty ? "Always" : fishDetailsGridViewModel.availabilityTime
        
        XCTAssertEqual(availabilityTime, "Always")
        XCTAssertEqual(fishDetailsGridViewModel.availabilityTime, availabilityTime)
    }
    
    func testRarity() {
        guard let rarity = fishes.first?.availability.rarity else { return }
        XCTAssertEqual(rarity, "Common")
        XCTAssertEqual(fishDetailsGridViewModel.rarity, rarity)
    }
    
    func testNorthernHemisphereAvailability() {
        guard let monthNorthern = fishes.first?.availability.monthNorthern else { return }
        XCTAssertEqual(monthNorthern, "11-3")
        XCTAssertEqual(fishDetailsGridViewModel.northernHemisphereAvailability, monthNorthern)
    }
    
    func testSouthernHemisphereAvailability() {
        guard let monthSouthern = fishes.first?.availability.monthSouthern else { return }
        XCTAssertEqual(monthSouthern, "5-9")
        XCTAssertEqual(fishDetailsGridViewModel.southernHemisphereAvailability, monthSouthern)
    }
}
