//
//  NetworkService.swift
//  testingMVC-N
//
//  Created by user on 12/4/19.
//  Copyright © 2019 DiStefanoTeam. All rights reserved.
//

import Foundation

class NetworkService {
    private init() {}
    static let shared = NetworkService()
    
    public func getData(url: URL, comletion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, responce, error) in
            guard let data = data else { return }
            
            do {
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    comletion(json)
                }
            } catch {
                print(error)
            }
        }.resume()
        
    }
}
