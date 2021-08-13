`Desarrollo Mobile` > `Swift Intermedio 2`


## Mejorar el Extension de UIButton

### OBJETIVO

- Unificar código de clases con extensions para hacer una implementación mas generica.

#### REQUISITOS

1. Xcode 11
2. Proyecto del Reto-03

#### DESARROLLO

Se tiene el proyecto de MusicApp con una clase llamada  `PlayerButton`.

Esta clase se encarga de personalizar el botón de play, next y previous.

Por otra parte tenemos el Highlight que cambia de color si es presionado el botón, pero esta en un Extension directamente en el UIButton.

Este postwork consiste hacer que el extension de UIButton tenga toda la implementación necesaria para no depender del uso de la clase PlayerButton, a tal grado de poder eliminar dicha clase.
