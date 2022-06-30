//
//  HandleError.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI
import Alamofire

enum NetworkingError: Error {
    case urlInvalid
    case noData
    case decodingFailure
}
