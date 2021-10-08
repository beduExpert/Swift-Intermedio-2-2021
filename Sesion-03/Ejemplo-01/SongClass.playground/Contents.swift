import UIKit

// Recuerden que las clases son del tipo Referencia (o Reference type)

class Song {
    var name: String
    var album: String
    var timesPlayed = 0
    
    init(name: String, album: String, timesPlayed: Int) {
        self.name = name
        self.album = album
        self.timesPlayed = timesPlayed
    }
    
    func hasBeenPlayed() {
        timesPlayed += 1
    }
}

let song = Song(name: "Nothing else matters", album: "The black album", timesPlayed: 0)

song.hasBeenPlayed()

print(song.timesPlayed)

let newSong = song
newSong.name = "Another brick in the wall"
newSong.hasBeenPlayed()

print(song.name)
print(newSong.name)
print(song.timesPlayed)
print(newSong.timesPlayed)
