//
//  SeaCreatureDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class SeaCreatureDetailsViewModelTests: XCTestCase {

    private var seaCreatureDetailsViewModel: SeaCreatureDetailsViewModel!
    
    override func setUpWithError() throws {
        seaCreatureDetailsViewModel = SeaCreatureDetailsViewModel(seaCreature: seaCreatures[0])
    }
    
    override func tearDownWithError() throws {
        seaCreatureDetailsViewModel = nil
    }
    
    func testIconUri() {
        guard let iconURI = seaCreatures.first?.iconURI else { return }
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/sea/1")
        XCTAssertEqual(seaCreatureDetailsViewModel.iconUri, iconURI)
    }
    
    func testMuseumPhrase() {
        guard let museumPhrase = seaCreatures.first?.museumPhrase else { return }
        XCTAssertEqual(museumPhrase, "Let it be known that seaweed is a misnomer of the highest order! That is, it is not a noxious weed so much as it is a marine algae most beneficial to life on land and sea. Seaweed, you see, provides essential habitat and food for all manner of marine creatures. And it creates a great deal of the oxygen we land lovers love to breath too, hoo! And yet, I can't help but shudder when the slimy stuff touches my toes during a swim. Hoot! The horror!")
        XCTAssertEqual(seaCreatureDetailsViewModel.museumPhrase, museumPhrase)
    }
}
