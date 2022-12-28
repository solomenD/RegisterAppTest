//
//  AlbumModels.swift
//  RegisterAppTest
//
//  Created by Solomon  on 27.12.2022.
//

import Foundation


struct AlbumModels: Decodable, Equatable {
    let results: [Results]
}

struct Results: Decodable, Equatable {
    let artistName: String?
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
    let collectionId: Int
}
