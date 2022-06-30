//
//  NetworkProtocol.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 16/06/2022.
//

import SwiftUI
import Alamofire

protocol NetworkingProtocol {
    func getData<T: Codable>(with url: URL, completionHandler: @escaping (AFDataResponse<[T]>) -> Void)
}
