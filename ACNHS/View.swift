//
//  View.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 23/06/2022.
//

import SwiftUI

extension View {
    func blinkBorder(on state: Binding<Bool>, color: Color,
                     repeatCount: Int = 1, duration: Double = 0.5) -> some View {
        self.modifier(BlinkingBorderModifier(
            state: state, color: color,
            repeatCount: repeatCount, duration: duration)
        )
    }
}
