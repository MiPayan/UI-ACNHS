//
//  LoadingView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 25/10/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Color.blue.ignoresSafeArea()
        VStack {
            ProgressView()
        }
        .background(.clear)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
