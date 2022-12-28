//
//  SongsModel.swift
//  RegisterAppTest
//
//  Created by Solomon  on 28.12.2022.
//

import Foundation

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
