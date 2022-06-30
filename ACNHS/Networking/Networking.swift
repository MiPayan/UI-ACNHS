//
//  Networking.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI
import Combine
import Alamofire

final class Networking: NetworkingProtocol {
    
    func getData<T>(with url: URL, completionHandler: @escaping (AFDataResponse<[T]>) -> Void) where T : Decodable {
        AF.request(url).responseDecodable(of: [T].self) { dataResponse in
            completionHandler(dataResponse)
        }
    }
}
