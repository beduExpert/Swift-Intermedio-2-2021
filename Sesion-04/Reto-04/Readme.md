 `Desarrollo Mobile` > `Swift Intermedio 2`
	
## Reto 04 - Sesión 04 - Implementando un CollectionView.

### OBJETIVO 

- Implementar la vista de detalle en el **CollectionView**

#### REQUISITOS 

1. Xcode 12+.
2. La App terminada del [Ejemplo-04](Ejemplo-04) de esta sesión.

### NOTA: Si no cuentas con la versión final del ejercicio, puedes descargarla de aqui:
[Proyecto](Cities_CollectionView_final.zip) de esta sesión.

#### DESARROLLO

1.- Dentro de **ViewControllers** crea **CityDetailViewController.swift**
* Crea lo siguiente:
* Una variable con el nombre _city_ tipo **City**, y hazla optional.
* Un **IBOutlet** con el nombre _cityImageView_ del tipo **UIImageView**
* Un **IBOutlet** con el nombre _cityImageName_ del tipo **UILabel**

2.- En el **Main.storyboard** crea un nuevo **ViewController** y en el **File's Owner** asignale el **CityDetailViewController**

3.- Haz las conexiones pertinentes de los **IBOutlets**

4.- Al seleccionar una imagen de la pantalla principal, deberás de:
* Presentar la pantalla de detalle.
* En el detalle, presentar el nombre de la ciudad.
* En el detalle, presentar la imagen de la ciudad.