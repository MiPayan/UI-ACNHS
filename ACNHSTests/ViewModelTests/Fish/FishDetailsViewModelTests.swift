//
//  FishDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class FishDetailsViewModelTests: XCTestCase {

    private var fishDetailsViewModel: FishDetailsViewModel!
    
    override func setUpWithError() throws {
        fishDetailsViewModel = FishDetailsViewModel(fish: fishes[0])
    }
    
    override func tearDownWithError() throws {
        fishDetailsViewModel = nil
    }
    
    func testIconUri() {
        guard let iconURI = fishes.first?.iconURI else { return }
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/fish/1")
        XCTAssertEqual(fishDetailsViewModel.iconUri, iconURI)
    }
    
    func testMuseumPhrase() {
        guard let museumPhrase = fishes.first?.museumPhrase else { return }
        XCTAssertEqual(museumPhrase, "Bitterlings hide their eggs inside large bivalves—like clams—where the young can stay safe until grown. The bitterling isn't being sneaky. No, their young help keep the bivalve healthy by eating invading parasites! It's a wonderful bit of evolutionary deal making, don't you think? Each one keeping the other safe... Though eating parasites does not sound like a happy childhood... Is that why the fish is so bitter?")
        XCTAssertEqual(fishDetailsViewModel.museumPhrase, museumPhrase)
    }
}
