//
//  BodyFossilDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class BodyFossilDetailsViewModelTests: XCTestCase {
    
    private var bodyFossilDetailsViewModel: BodyFossilDetailsViewModel!
    
    override func setUpWithError() throws {
        bodyFossilDetailsViewModel = BodyFossilDetailsViewModel(fossil: fossils[0])
    }
    
    override func tearDownWithError() throws {
        bodyFossilDetailsViewModel = nil
    }
    
    func testFileName() {
        guard let fileName = fossils.first?.fileName else { return }
        let formatFileName = fileName.replaceCharacter("_", by: "").capitalized
        XCTAssertEqual(fileName, "acanthostega")
        XCTAssertEqual(bodyFossilDetailsViewModel.fileName, formatFileName)
    }
}
