//
//  FishViewModel.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 18/05/2022.
//

import SwiftUI
import RealmSwift

final class FishViewModel: ObservableObject {
    
    private let service: ACNHServiceProtocol
    @Published var fishes = [FishData]()
    
    init(service: ACNHServiceProtocol = ACNHService()) {
        self.service = service
    }
    
    func getFishData() {
        service.getFishData { result in
            switch result {
            case .success(let fish):
                DispatchQueue.main.async {
                    self.fishes = fish
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func getTheFishFromTheNorthernEmisphere() -> [FishData] {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = fishes.filter { $0.availability.monthArrayNorthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getTheFishFromTheSouthernEmisphere() -> [FishData] {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        let filtered = fishes.filter { $0.availability.monthArraySouthern.contains(month) && $0.availability.timeArray.contains(hour) }
        return filtered
    }
    
    func getPrice(fish: FishData) -> String {
        return String(fish.price)
    }
    
    func getShadow(fish: FishData) -> String {
        return fish.shadow
    }
    
    func getRarity(fish: FishData) -> String {
        return fish.availability.rarity
    }
    
    func getFileName(fish: FishData) -> String {
        return fish.fileName.replacedCharacter("_", by: "").capitalized
    }
    
    func getIconUri(fish: FishData) -> String {
        return fish.iconURI
    }
    
    func formatCatchPhrase(fish: FishData) -> String {
        return "\" \(fish.catchPhrase) \""
    }
    
    func formatAvailabilityLocation(fish: FishData) -> String {
        return fish.availability.location.replacedCharacter("when ", by: "")
    }
    
    func formatAvailabilityTime(fish: FishData) -> String {
        var time = ""
        if fish.availability.time == "" {
            time = "Always"
        } else {
            time = fish.availability.time
        }
        return time
    }
    
    func formatNorthernEmisphere(fish: FishData) -> String {
        var emisphereAvailability = ""
        if fish.availability.monthNorthern == "" {
            emisphereAvailability = "Always"
        } else {
            emisphereAvailability = fish.availability.monthNorthern
        }
        return emisphereAvailability
    }
    
    func formatSouthernEmisphere(fish: FishData) -> String {
        var emisphereAvailability = ""
        if fish.availability.monthSouthern == "" {
            emisphereAvailability = "Always"
        } else {
            emisphereAvailability = fish.availability.monthSouthern
        }
        return emisphereAvailability
    }
}
