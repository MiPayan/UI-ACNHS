//
//  DispatchQueueMock.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 12/12/2022.
//

import Foundation
@testable import ACNHS

final class DispatchQueueMock: DispatchQueueProtocol {
    func async(execute work: @escaping @convention(block) () -> Void) {
        work()
    }
}
