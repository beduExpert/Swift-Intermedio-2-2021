import UIKit

enum Food {
    case herviboro, carnivoro, omnivoro
}

protocol Animal {
    var feet: Int { get }
    var food: Food { get }
    
    func walk()
}

protocol Talk {
    var sound: String { get set }
    func talk()
}

struct Human: Animal, Talk {
    var feet: Int
    var food: Food
    var sound: String
    
    func talk() {
        print("Humano dice: \(sound)")
    }
    
    func walk() {
        print("El Humano puede caminar, pero utilizando 2 pies.")
    }
}

struct Lion: Animal {
    var feet: Int
    var food: Food
    
    func walk() {
        print("El león puede caminar pero utilizando 4 patas.")
    }
}

protocol Fly {
    func canFly()
}

struct Penguin: Animal, Fly {
    var feet: Int
    var food: Food
    
    func canFly() {
        print("los pinguinos no vuelan")
    }
    
    func walk() {
        print("pero los pinguinos si caminan")
    }
}



print("León:")
let lion = Lion(feet: 4, food: Food.carnivoro)
lion.walk()

print("Humano:")
var human = Human(feet: 2, food: Food.omnivoro, sound: "Hola")
human.walk()
human.talk()


extension Human {
    func canThink() {
        print("Los humanos pueden pensar")
    }
}

human.canThink()
