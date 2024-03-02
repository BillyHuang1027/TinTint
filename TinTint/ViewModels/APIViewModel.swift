//
//  APIViewModel.swift
//  TintTint
//
//  Created by RD1-Billy on 2024/3/2.
//

import UIKit

class APIViewModel {
    var photoDatas: [APIModel] = []
    var currentPage = 1
    let perPage = 40
    
    func getPhotos(completion: @escaping ([APIModel]?, Error?) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos?_page=\(currentPage)&_limit=\(perPage)") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                completion(nil, error)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let newPhotoDatas = try decoder.decode([APIModel].self, from: data)
                
                self.photoDatas.append(contentsOf: newPhotoDatas)
                self.currentPage += 1
                completion(newPhotoDatas ,nil)
            } catch {
                completion(nil, error)
            }
        }.resume()
    }
    
    func loadImage(for photo: APIModel, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: photo.thumbnailUrl) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let image = UIImage(data: data)
            completion(image)
        }.resume()
    }
}
