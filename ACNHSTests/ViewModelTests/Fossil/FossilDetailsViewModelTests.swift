//
//  FossilDetailsViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class FossilDetailsViewModelTests: XCTestCase {

    private var fossilDetailsViewModel: FossilDetailsViewModel!
    
    override func setUpWithError() throws {
        fossilDetailsViewModel = FossilDetailsViewModel(fossil: fossils[0])
    }
    
    override func tearDownWithError() throws {
        fossilDetailsViewModel = nil
    }
    
    func testImageUri() {
        guard let imageURI = fossils.first?.imageURI else { return }
        XCTAssertEqual(imageURI, "https://acnhapi.com/v1/images/fossils/acanthostega")
        XCTAssertEqual(fossilDetailsViewModel.imageUri, imageURI)
    }
    
    func testMuseumPhrase() {
        guard let museumPhrase = fossils.first?.museumPhrase else { return }
        XCTAssertEqual(museumPhrase, "The acanthostega! Said to be one of the earliest amphibians, it existed well before dinosaurs. Because they lived as fish not long before, they still had gills and very webbed \"hands.\". To toss away the life they knew and venture onto unknown lands... they must have been very brave! Hmm... Does it still count as bravery if you have no understanding of what you're doing?")
        XCTAssertEqual(fossilDetailsViewModel.museumPhrase, museumPhrase)
    }
}
