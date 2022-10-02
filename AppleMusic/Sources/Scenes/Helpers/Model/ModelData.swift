//
//  ModelData.swift
//  AppleMusic
//
//  Created by Евгений Макулов on 20.09.2022.
//

import Foundation

class ModelData: ObservableObject {
    @Published var searchCategories: [SearchCategoryModel] = SearchCategoryModel.getData()
    @Published var radioPreviewData: [RadioModel] = RadioModel.getPreviewData()
    @Published var stations: [RadioModel] = RadioModel.getStations()
    @Published var tracks: [TrackModel] = TrackModel.getData()
}
