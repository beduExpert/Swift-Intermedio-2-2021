//
//  Structs.swift
//  MusicApp
//
//  Created by Ricardo Montesinos on 13/12/19.
//  Copyright © 2019 Bedu. All rights reserved.
//

import Foundation
//
//struct Music: Decodable {
//  var album: String
//  var year: Int
//  var cover: String
//  var genre: String
//}
struct Music: Decodable {
  var id: Int
  var name: String
  var link: String
  var imageUrl: String
  var number_of_lessons: Int
}
