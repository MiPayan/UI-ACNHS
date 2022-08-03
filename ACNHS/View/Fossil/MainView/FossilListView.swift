//
//  FossilListView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/08/2022.
//

import SwiftUI

struct FossilListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(fossils) { fossil in
                    Section(header: Text(fossil.partOf)) {
                        RowMainView(
                            fileName: fossil.fileName,
                            image: fossil.imageURI,
                            price: fossil.price,
                            backgroundColor: .brown)
                    }
                }
            }
        }
    }
}

struct FossilListView_Previews: PreviewProvider {
    static var previews: some View {
        FossilListView()
    }
}
