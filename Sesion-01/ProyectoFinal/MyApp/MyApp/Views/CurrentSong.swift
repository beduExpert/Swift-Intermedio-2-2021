//
//  CurrentSong.swift
//  MyApp
//
//  Created by Omar Guzmán on 05/10/21.
//

import Foundation

class CurrentSong {
    var name: String
    var duration: Double
    var timePlayed: Double {
        didSet {
            print(oldValue)
        }
    }
    
    init(name: String, duration: Double, timePlayed: Double) {
        self.name = name
        self.duration = duration
        self.timePlayed = timePlayed
    }
}
