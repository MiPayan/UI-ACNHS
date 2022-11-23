//
//  CurrentCalendarMock.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 11/11/2022.
//

import Foundation
@testable import ACNHS

final class CurrrentCalendarMock: CalendarProtocol {
    
    var invockedMakeCurrentCalendarCount = 0
    var stubbedMakeCurrentCalendar: (Int, Int)!
    
    func makeCurrentCalendar() -> (Int, Int) {
        invockedMakeCurrentCalendarCount += 1
       return stubbedMakeCurrentCalendar
    }
}
