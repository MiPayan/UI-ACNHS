//
//  FossilDetailsGridViewModelTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import XCTest
@testable import ACNHS

final class FossilDetailsGridViewModelTests: XCTestCase {
    
    private var fossilDetailsGridViewModel: FossilDetailsGridViewModel!
    
    override func setUpWithError() throws {
        fossilDetailsGridViewModel = FossilDetailsGridViewModel(fossil: fossils[0])
    }
    
    override func tearDownWithError() throws {
        fossilDetailsGridViewModel = nil
    }
    
    func testPrice() {
        guard let price = fossils.first?.price else { return }
        XCTAssertEqual(price, 2000)
        XCTAssertEqual(fossilDetailsGridViewModel.price, String(price))
    }
}
