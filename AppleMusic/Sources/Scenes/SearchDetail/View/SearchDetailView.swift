//
//  SearchDetailView.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 20.09.2022.
//

import SwiftUI

struct SearchDetailView: View {

    let model: ModelData
    let title: String
    let rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            SearchDetailTopSectionView(model: model)
            SearchDetailBottomSectionView(model: model, title: title, isTwoRow: false)
            SearchDetailMiddleSectionView(model: model)
            SearchDetailBottomSectionView(model: model, title: "Плэйлисты", isTwoRow: true)

            Divider()
                .padding(.all, Metrics.padding)

            Spacer(minLength: Metrics.spacerMinLength)
        }
        .padding(.horizontal, Metrics.padding)
        .navigationTitle(title)
    }
}

struct SearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SearchDetailView(model: ModelData(), title: "Test")
    }
}

extension SearchDetailView {
    enum Metrics {
        static let padding: CGFloat = 8
        static let spacerMinLength: CGFloat = 80
    }
}
