`Desarrollo Mobile` > `Swift Intermedio 2`

## Reto 01 - Sesión 08 - Patrón MVVM.

### OBJETIVO 

- Terminar la implementación del **Model**. 

#### REQUISITOS 

1. Xcode 12+
2. App de Ejemplo para esta sesión [App de Ejemplo](MVVM-iOS-App-start)

#### DESARROLLO

- En este caso ya has visto como se implementa parte del **Model**, pero si observas, en la app de ejemplo, se manejan **dos** datos, el _nombre_ que ya viste como se implementa en el Ejemplo 01 y el num. de tél. que tendrás que implementar en este reto.

<details>
	<summary>Solución</summary>
	<p> Agregar un nuevo elemento al **Model**.</p>

```
	var phoneContactNumber: String?
```

<p> Integra la nueva variable a los métodos **init**. </p>

```
  init(phoneContactNumber: String, phoneContactName: String) {
        self.phoneContactNumber = phoneContactNumber
        self.phoneContactName = phoneContactName
  }


  init(dictionary: NSDictionary) {
        self.phoneContactNumber = dictionary["phoneContactNumber"] as? String
        self.phoneContactName = dictionary["phoneContactName"] as? String
  }
```
* Con esto tienes terminado tu **Model**.

* Así se deberá de ver la implementación final del **Model**

* ![](0.png)
</details> 