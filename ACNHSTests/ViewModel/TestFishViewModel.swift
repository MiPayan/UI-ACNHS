//
//  TestFishViewModel.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 14/06/2022.
//

import XCTest
@testable import ACNHS

final class TestFishViewModel: XCTestCase {
    
    private var fishViewModel: FishViewModel!
    
    override func setUpWithError() throws {
        fishViewModel = FishViewModel()
    }
    
    override func tearDownWithError() throws {
        fishViewModel = nil
    }
    
    func testToGetPrice() {
        guard let fish = fishes.first else { return }
        let price = fish.price
        let stringPrice = String(price)
        XCTAssertEqual(stringPrice, fishViewModel.getPrice(fish: fish))
    }
    
    func testToGetShadow() {
        guard let fish = fishes.first else { return }
        let shadow = fish.shadow
        XCTAssertEqual(shadow, fishViewModel.getShadow(fish: fish))
    }
    
    func testToGetRarity() {
        guard let fish = fishes.first else { return }
        let rarity = fish.availability.rarity
        XCTAssertEqual(rarity, fishViewModel.getRarity(fish: fish))
    }
    
    func testToGetCatchPhrase() {
        guard let fish = fishes.first else { return }
        let catchPhrase = fish.catchPhrase
        let catchPhraseFormatted = "\" \(catchPhrase) \""
        XCTAssertEqual(catchPhraseFormatted, fishViewModel.formatCatchPhrase(fish: fish))
    }
    
    func testToFormatFileName() {
        guard let fish = fishes.first else { return }
        let fileName = fish.fileName
        let fileNameFormatted = fileName.replacedCharacter("when ", by: "").capitalized
        XCTAssertEqual(fileNameFormatted, fishViewModel.getFileName(fish: fish))
    }
    
    func testToFormatAvailabilityLocation() {
        guard let fish = fishes.first else { return }
        let location = fish.availability.location
        let locationFormatted = location.replacedCharacter("when ", by: "")
        XCTAssertEqual(locationFormatted, fishViewModel.formatAvailabilityLocation(fish: fish))
    }
    
    func testToFormatNorthernEmisphere() {
        guard let fish = fishes.first else { return }
        let emisphereAvailability = fish.availability.monthNorthern
        XCTAssertFalse(emisphereAvailability == "Always")
        XCTAssertEqual(emisphereAvailability, fishViewModel.formatNorthernEmisphere(fish: fish))
    }
}
