//
//  Songs.swift
//  MyApp
//
//  Created by Omar Guzmán on 28/09/21.
//

import Foundation

struct Songs: Codable {
    let songId: String?
    let name: String?
    let duration: Double?
    let artist: String?
    let genre: String?
}
