//
//  Champion.swift
//  LeagueMaster
//
//  Created by Ying Yang on 3/25/19.
//  Copyright © 2019 Steven Yang. All rights reserved.
//

import Foundation

struct Champion: Codable {
    let id: String
    let key: Int
    let name: String
    let title: String
    let blurb: String
    
}

struct ResonseModel: Codable {
    let type : String
    let format: String
    let data: [String: Champion]
}
