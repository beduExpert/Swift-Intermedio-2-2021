import UIKit

var name: String?
print(name)
//name = "Bedu"
print(name)
// forzando el desempacado
//print(name!) // si nuestra variable no contiene un valor, la app caerá en un error de excepción, comentarla para evitar el error.
// primer paso para evitar el valor nulo
if name != nil {
    print(name!)
} else {
    print("la variable es nula")
}
// primer modo elegante de desempacar una variable opcional:
if let safeName = name {
    print(safeName)
} else {
    print("la variable es nula")
}
// segundo modo elegante de desempacar una variable opcional:
checkSafe(value: name)
func checkSafe(value: String?) -> String { // con esto, recibimos un valor opcional, revisamos que no sea nulo y regresamos el valor seguro
    guard let safeValue = value else { return "La variable es nula" }
    return safeValue
}
