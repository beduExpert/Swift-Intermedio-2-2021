import UIKit

struct Settings {
    static let shared = Settings()
    var username: String?
    
    private init() { }
}
