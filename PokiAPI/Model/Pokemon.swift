import Foundation

struct Pokemon : Codable {
    let name : String
    let sprites : sprites
    
    struct sprites : Codable {
        let front_default : URL
    }
}
