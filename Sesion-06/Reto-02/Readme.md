 `Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 02 - Sesión 06 - Polimorfismo.

### OBJETIVO 

- Crear una clase base, implementar subclases y hacer **override** de los métodos que se implementen.

#### REQUISITOS 

1. Xcode 12+.
2. Playgournds.

#### DESARROLLO

1. Crea una clase base llamada **Warrior**.
2. Define las sig. propiedades:
* _name_ de tipo **String**.
* _health_ de tipo **Double**.
* _maxHealth_ de tipo **Double**.
* _damage_ de tipo **Int**.
* _defense_ de tipo **Int**.
* _message_ de tipo **String**.

3. Implementa el método **init**.
4. Crea un **convenience init()** que sette estos valores por default:
* self.init(name: "Default warrior", health: 100.0, damage: 20, defense: 10)

5. Crea una instancia llamada **gandalf** que herede de **Warrior**.
6. Inicializala con los sig. valores:
* (name: "Gandalf", health: 60.0, maxHealth: 100.0, damage: 15, defense: 12, message: "Magician")

7. Crea una instancia llamada **zalgoren** que herede de **Warrior**.
8. Inicializala con los sig. valores:
* (name: "Zalgoren", health: 80.0, maxHealth: 100.0, damage: 15, defense: 12, message: "Warrior")
9. Modifica las propiedades a tu gusto e imprime los valores en consola.

# Nota para el mentor:
* Si desean ver más a detalle el ejemplo de _Warriors_ favor de revisar este contenido:
https://www.ictdemy.com/swift/oop/arena-with-a-mage-in-swift-inheritance-and-polymorphism