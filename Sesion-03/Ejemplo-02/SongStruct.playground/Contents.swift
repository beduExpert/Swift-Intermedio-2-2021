
// Sesion-03, Ejemplo-02
import AVFoundation

// Recuerden que las structs son tipo Valor
// es decir Value Type, correr el ejemplo.

struct Song {
    var name: String
    let album: String
    var timesPlayed: Int = 0
    
    mutating func hasBeenPlayed() {
        timesPlayed += 1
    }
}

var song = Song(name: "Nothing else matters", album: "The black album", timesPlayed: 0)

song.hasBeenPlayed()

print(song.timesPlayed)

var newSong = song
newSong.name = "Another brick in the wall"
newSong.hasBeenPlayed()

print(song.name)
print(newSong.name)
print(song.timesPlayed)
print(newSong.timesPlayed)
