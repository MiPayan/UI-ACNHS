//
//  FossilsMainView.swift
//  ACNHS
//
//  Created by Mickael PAYAN on 03/05/2022.
//

import SwiftUI

struct FossilsMainView: View {
    
    @StateObject private var fossilViewModel: FossilViewModel
    
    init(fossilViewModel: FossilViewModel) {
        _fossilViewModel = StateObject(wrappedValue: fossilViewModel)
    }
    
    var body: some View {
        NavigationView {
            switch fossilViewModel.state {
            case .success:
                ScrollView {
                    LazyVGrid(columns: GridSetting().gridLayout(numberPerRow: 3)) {
                        ForEach(fossilViewModel.fossils) { fossil in
                            NavigationLink(
                                destination: FossilDetailsView(
                                    fossilDetailsViewModel: FossilDetailsViewModel(fossil: fossil),
                                    bodyFossilDetailsViewModel: BodyFossilDetailsViewModel(fossil: fossil),
                                    fossilDetailsGridViewModel: FossilDetailsGridViewModel(fossil: fossil)
                                )
                            ) {
                                ItemMainView(
                                    fileName: fossil.fileName,
                                    image: fossil.imageURI,
                                    price: fossil.price,
                                    backgroundColor: Color("ColorBrownHeart")
                                )
                            }
                        }
                    }
                    .padding()
                }
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color("ColorBrownHeart"), Color(uiColor: .brown)]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
                .navigationBarHidden(true)
            case .loading:
                LoadingView()
            case .error:
                ErrorView()
            }
        }
        .onAppear {
            fossilViewModel.getFossilData()
        }
    }
}

struct FossilsGlobalView_Previews: PreviewProvider {
    static var previews: some View {
        FossilsMainView(fossilViewModel: FossilViewModel())
    }
}
