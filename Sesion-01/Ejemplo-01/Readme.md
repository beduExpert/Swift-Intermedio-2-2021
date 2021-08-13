
`Desarrollo Mobile` > `Swift Intermedio 2`

## Titulo del Ejemplo

### OBJETIVO

- Aprender como es el uso de **Collection Types** con **Optionals**.


#### REQUISITOS

1. Xcode 11
2. Playgrounds

#### DESARROLLO

Tendremos un Nested Optional como:

> let name: String??? = “MyName”

Realizar:

	1.- Force Unwrap
	
	2.- Optional Binding
	
	3.- Crear una función que tenga como parámetro:

> (_ name: String???)  

Usar `guard` en caso de que exista el valor mostrarlo en consola con un `print()`.

> **Nota**: Son tres signos de **“?”**.

La idea es hacer notar que un Nested Optional es un Optional dentro de otro:

> let name: String??? = "Bedu"

El uso de Force Unwrap, por cada signo de **?**, hay uno de **!**.

> print(name!!!)

En el caso de *Optional Biding*, 

```
if let name = name, 
   let almostUnwrapped = name, 
   let unwrapped = almostUnwrapped {
  		print(unwrapped)
}
```

Guard within Function:

```
func unwrapp(_ value: String???) {
  guard let value = value,
    let almostUnwrapped = value,
    let unwrapped = almostUnwrapped else { return }
  print(unwrapped)
}
unwrapp(name)
```


