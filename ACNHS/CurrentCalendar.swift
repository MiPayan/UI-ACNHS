//
//  CurrentCalendar.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 27/10/2022.
//

import Foundation

final class CurrentCalendar {
    
    func makeCurrentCalendar() -> (Int, Int) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let month = calendar.component(.month, from: date)
        return (hour, month)
    }
}
