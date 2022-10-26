//
//  BugDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class BugDetailsViewModelTests: XCTestCase {

    private var bugDetailsViewModel: BugDetailsViewModel!
    
    override func setUpWithError() throws {
        bugDetailsViewModel = BugDetailsViewModel(bug: bugs[0])
    }
    
    override func tearDownWithError() throws {
        bugDetailsViewModel = nil
    }
    
    func testIconUri() {
        guard let iconURI = bugs.first?.iconURI else { return }
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/bugs/1")
        XCTAssertEqual(bugDetailsViewModel.iconUri, iconURI)
    }
    
    func testMuseumPhrase() {
        guard let museumPhrase = bugs.first?.museumPhrase else { return }
        XCTAssertEqual(museumPhrase, "The common butterfly would have you believe it is but a beautiful friend flitting prettily about the flowers. Bah, I say! They may seem innocent things with their pretty white wings, but they hide a dark side! The common butterfly caterpillar is called a cabbage worm, you see, and it's a most voracious pest. The ravenous beasts chew through cabbage, broccoli, kale and the like with a devastating gusto. And my feathers! Their green coloring is truly GROSS! A hoo-rrific hue, I say.")
        XCTAssertEqual(bugDetailsViewModel.museumPhrase, museumPhrase)
    }
}
