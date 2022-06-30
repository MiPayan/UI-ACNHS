//
//  FossilViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 31/05/2022.
//

import Foundation

import SwiftUI

final class FossilViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var fossils = [FossilData]()

    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
    }
    
    func getFossilData() {
        service.getFossilData { result in
            switch result {
            case .success(let fossil):
                DispatchQueue.main.async {
                    self.fossils = fossil
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func sortTheFossilsOfTheSamePart() {

    }
    
//    let date = Date()
//    let calendar = Calendar.current
//    let hour = calendar.component(.hour, from: date)
//    let month = calendar.component(.month, from: date)
//    let filtered = fishes.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
//    return filtered
}
