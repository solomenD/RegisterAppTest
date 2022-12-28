//
//  NetworkDataFetch.swift
//  RegisterAppTest
//
//  Created by Solomon  on 27.12.2022.
//

import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchAlbum(urlString: String, respones: @escaping (AlbumModels?, Error?) -> Void) {
        
        NetworkRequest.shared.request(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModels.self, from: data)
                    respones(albums, nil)
                } catch let jsonError{
                    print("Faild to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error recived request data : \(error.localizedDescription)")
                respones(nil, error)
            }
        }
    }
    
    func fetchSongs(urlString: String, respones: @escaping (SongsModel?, Error?) -> Void) {
        
        NetworkRequest.shared.request(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(SongsModel.self, from: data)
                    respones(albums, nil)
                } catch let jsonError{
                    print("Faild to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error recived request data : \(error.localizedDescription)")
                respones(nil, error)
            }
        }
    }
}
