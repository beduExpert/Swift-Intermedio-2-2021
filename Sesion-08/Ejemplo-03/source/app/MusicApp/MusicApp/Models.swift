//
//  Models.swift
//  MusicApp
//
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation

struct Song: Decodable {
  var name: String
  var year: Int
  var album: String
}
