//
//  BlinkingTextModifier.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 23/06/2022.
//

import SwiftUI

struct BlinkingBorderModifier: ViewModifier {
    let state: Binding<Bool>
    let color: Color
    let repeatCount: Int
    let duration: Double

    // internal wrapper is needed because there is no didFinish of Animation now
    private var blinking: Binding<Bool> {
        Binding<Bool>(get: {
            DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
                self.state.wrappedValue = false
            }
            return self.state.wrappedValue }, set: {
            self.state.wrappedValue = $0
        })
    }
    
    func body(content: Content) -> some View
    {
        content
            .border(self.blinking.wrappedValue ? self.color : Color.clear, width: 1.0)
            .animation( // Kind of animation can be changed per needs
                Animation.linear(duration:self.duration).repeatCount(self.repeatCount)
            )
    }
}
