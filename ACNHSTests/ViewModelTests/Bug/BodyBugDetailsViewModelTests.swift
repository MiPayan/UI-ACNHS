//
//  BodyBugDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class BodyBugDetailsViewModelTests: XCTestCase {
    
    private var bodyBugDetailsViewModel: BodyBugDetailsViewModel!
    
    override func setUpWithError() throws {
        bodyBugDetailsViewModel = BodyBugDetailsViewModel(bug: bugs[0])
    }
    
    override func tearDownWithError() throws {
        bodyBugDetailsViewModel = nil
    }
    
    func testFileName() {
        guard let fileName = bugs.first?.fileName else { return }
        let formatFileName = fileName.replaceCharacter("_", by: "").capitalized
        XCTAssertEqual(fileName, "common_butterfly")
        XCTAssertEqual(bodyBugDetailsViewModel.fileName, formatFileName)
    }
    
    func testCatchPhrase() {
        guard let catchPhrase = bugs.first?.catchPhrase else { return }
        XCTAssertEqual(catchPhrase, "I caught a common butterfly! They often flutter by!")
        XCTAssertEqual(bodyBugDetailsViewModel.catchPhrase, "\" \(catchPhrase) \"")
    }
}
