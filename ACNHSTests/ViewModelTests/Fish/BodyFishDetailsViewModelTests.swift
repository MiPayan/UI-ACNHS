//
//  BodyFishDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import XCTest
@testable import ACNHS

final class BodyFishDetailsViewModelTests: XCTestCase {
    
    private var bodyFishDetailsViewModel: BodyFishDetailsViewModel!
    
    override func setUpWithError() throws {
        bodyFishDetailsViewModel = BodyFishDetailsViewModel(fish: fishes[0])
    }
    
    override func tearDownWithError() throws {
        bodyFishDetailsViewModel = nil
    }
    
    func testFileName() {
        guard let fileName = fishes.first?.fileName else { return }
        let formatFileName = fileName.replaceCharacter("_", by: "").capitalized
        XCTAssertEqual(fileName, "bitterling")
        XCTAssertEqual(bodyFishDetailsViewModel.fileName, formatFileName)
    }
    
    func testCatchPhrase() {
        guard let catchPhrase = fishes.first?.catchPhrase else { return }
        XCTAssertEqual(catchPhrase, "I caught a bitterling! It's mad at me, but only a little.")
        XCTAssertEqual(bodyFishDetailsViewModel.catchPhrase, "\" \(catchPhrase) \"")
    }
}
