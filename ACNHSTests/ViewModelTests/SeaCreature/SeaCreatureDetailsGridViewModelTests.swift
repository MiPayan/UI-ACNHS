//
//  SeaCreatureDetailsGridViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class SeaCreatureDetailsGridViewModelTests: XCTestCase {
    
    private var seaCreatureDetailsGridViewModel: SeaCreatureDetailsGridViewModel!
    
    override func setUpWithError() throws {
        seaCreatureDetailsGridViewModel = SeaCreatureDetailsGridViewModel(seaCreature: seaCreatures[0])
    }
    
    override func tearDownWithError() throws {
        seaCreatureDetailsGridViewModel = nil
    }
    
    func testPrice() {
        guard let price = seaCreatures.first?.price else { return }
        XCTAssertEqual(price, 600)
        XCTAssertEqual(seaCreatureDetailsGridViewModel.price, String(price))
    }
    
    func testShadow() {
        guard let shadow = seaCreatures.first?.shadow else { return }
        XCTAssertEqual(shadow, "Large")
        XCTAssertEqual(seaCreatureDetailsGridViewModel.shadow, shadow)
    }
 
    func testAvailabilityTime() {
        guard let time = seaCreatures.first?.availability.time else { return }
        XCTAssertEqual(time, "")
        
        let availabilityTime = time.isEmpty ? "Always" : seaCreatureDetailsGridViewModel.availabilityTime
        
        XCTAssertEqual(availabilityTime, "Always")
        XCTAssertEqual(seaCreatureDetailsGridViewModel.availabilityTime, availabilityTime)
    }
    
    func testSpeed() {
        guard let speed = seaCreatures.first?.speed else { return }
        XCTAssertEqual(speed, "Stationary")
        XCTAssertEqual(seaCreatureDetailsGridViewModel.speed, speed)
    }
    
    func testNorthernHemisphereAvailability() {
        guard let monthNorthern = seaCreatures.first?.availability.monthNorthern else { return }
        XCTAssertEqual(monthNorthern, "10-7")
        XCTAssertEqual(seaCreatureDetailsGridViewModel.northernHemisphereAvailability, monthNorthern)
    }
    
    func testSouthernHemisphereAvailability() {
        guard let monthSouthern = seaCreatures.first?.availability.monthSouthern else { return }
        XCTAssertEqual(monthSouthern, "4-1")
        XCTAssertEqual(seaCreatureDetailsGridViewModel.southernHemisphereAvailability, monthSouthern)
    }
}
