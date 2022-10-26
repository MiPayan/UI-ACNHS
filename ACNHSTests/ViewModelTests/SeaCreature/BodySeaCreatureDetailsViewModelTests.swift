//
//  BodySeaCreatureDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class BodySeaCreatureDetailsViewModelTests: XCTestCase {
    
    private var bodySeaCreatureDetailsViewModel: BodySeaCreatureDetailsViewModel!
    
    override func setUpWithError() throws {
        bodySeaCreatureDetailsViewModel = BodySeaCreatureDetailsViewModel(seaCreature: seaCreatures[0])
    }
    
    override func tearDownWithError() throws {
        bodySeaCreatureDetailsViewModel = nil
    }
    
    func testFileName() {
        guard let fileName = seaCreatures.first?.fileName else { return }
        let formatFileName = fileName.replaceCharacter("_", by: "").capitalized
        XCTAssertEqual(fileName, "seaweed")
        XCTAssertEqual(bodySeaCreatureDetailsViewModel.fileName, formatFileName)
    }
    
    func testCatchPhrase() {
        guard let catchPhrase = seaCreatures.first?.catchPhrase else { return }
        XCTAssertEqual(catchPhrase, "I got some seaweed! I couldn't kelp myself.")
        XCTAssertEqual(bodySeaCreatureDetailsViewModel.catchPhrase, "\" \(catchPhrase) \"")
    }
}
