//
//  DataMock.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 26/10/2022.
//

import Foundation
@testable import ACNHS

final class DataMock {
    
    var response: HTTPURLResponse?
    var result: Result<[FishData], NetworkingError>!
    let validResponse = HTTPURLResponse(url: URL(string: "https://www.apple.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)!
    let invalidResponse = HTTPURLResponse(url: URL(string: "https://www.apple.com")!, statusCode: 500, httpVersion: nil, headerFields: nil)!
}
