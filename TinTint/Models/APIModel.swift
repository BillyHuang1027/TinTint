//
//  DataModel.swift
//  TintTint
//
//  Created by RD1-Billy on 2024/3/2.
//

import Foundation

struct APIModel: Codable {
    var albumId: Int
    var id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
}
