import UIKit

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}


var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, iTunesLive]

// haciendo downCast:

if let firstAlbum = allAlbums.first as? StudioAlbum {
    print(firstAlbum.name)
}

if let secondAlbum = allAlbums.last as? StudioAlbum {
    print(secondAlbum.name)
} else {
    print("No corresponde al tipo")
}
