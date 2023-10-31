<p align="center">
	<img width="256px" src="https://github.com/GodotParadise/SingletonBundle/blob/main/icon.jpg" alt="GodotParadiseSingletonBundle logo" />
	<h1 align="center">Godot Paradise SingletonBundle</h1>
	
[![LastCommit](https://img.shields.io/github/last-commit/GodotParadise/SingletonBundle?cacheSeconds=600)](https://github.com/GodotParadise/SingletonBundle/commits)
[![Stars](https://img.shields.io/github/stars/godotparadise/SingletonBundle)](https://github.com/GodotParadise/SingletonBundle/stargazers)
[![Total downloads](https://img.shields.io/github/downloads/GodotParadise/SingletonBundle/total.svg?label=Downloads&logo=github&cacheSeconds=600)](https://github.com/GodotParadise/SingletonBundle/releases)
[![License](https://img.shields.io/github/license/GodotParadise/SingletonBundle?cacheSeconds=2592000)](https://github.com/GodotParadise/SingletonBundle/blob/main/LICENSE.md)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat&logo=github)](https://github.com/godotparadise/SingletonBundle/pulls)
[![](https://img.shields.io/discord/1167079890391138406.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/XqS7C34x)
</p>

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/GodotParadise/SingletonBundle/blob/main/README.md)

- - -

Este plugin ofrece una colección de singletons que engloban recursos y funcionalidades globales que pueden mejorar la utilidad y accesibilidad de tu juego.

- [Requerimientos](#requerimientos)
- [✨Instalacion](#instalacion)
	- [Automatica (Recomendada)](#automatica-recomendada)
	- [Manual](#manual)
	- [CSharp version](#csharp-version)
- [Como empezar](#como-empezar)
	- [🧙‍♂️ Vector Wizard](#️-vector-wizard)
		- [normalize\_vector(value: Vector2) -\> Vector2:](#normalize_vectorvalue-vector2---vector2)
		- [normalize\_diagonal\_vector(direction: Vector2) -\> Vector2:](#normalize_diagonal_vectordirection-vector2---vector2)
		- [is\_diagonal\_direction(direction: Vector2) -\> bool:](#is_diagonal_directiondirection-vector2---bool)
		- [generate\_random\_direction() -\> Vector2:](#generate_random_direction---vector2)
		- [generate\_random\_angle(min\_angle\_range: float = 0.0, max\_angle\_range: float = 360.0) -\> float:](#generate_random_anglemin_angle_range-float--00-max_angle_range-float--3600---float)
		- [generate\_random\_directions\_on\_angle\_range(origin: Vector2 = Vector2.UP, min\_angle\_range: float = 0.0, max\_angle\_range: float = 360.0, num\_directions: int = 10) -\> Array\[Vector2\]:](#generate_random_directions_on_angle_rangeorigin-vector2--vector2up-min_angle_range-float--00-max_angle_range-float--3600-num_directions-int--10---arrayvector2)
		- [translate\_x\_axis\_to\_vector(axis: float) -\> Vector2:](#translate_x_axis_to_vectoraxis-float---vector2)
		- [distance\_manhattan\_v2(a: Vector2, b: Vector2) -\> float](#distance_manhattan_v2a-vector2-b-vector2---float)
		- [distance\_chebyshev\_v2(a: Vector2, b: Vector2) -\> float:](#distance_chebyshev_v2a-vector2-b-vector2---float)
		- [length\_manhattan\_v2(a : Vector2) -\> float:](#length_manhattan_v2a--vector2---float)
		- [length\_chebyshev\_v2(a : Vector2) -\> float:](#length_chebyshev_v2a--vector2---float)
		- [closest\_point\_on\_line\_clamped\_v2(a: Vector2, b: Vector2, c: Vector2) -\> Vector2:](#closest_point_on_line_clamped_v2a-vector2-b-vector2-c-vector2---vector2)
		- [closest\_point\_on\_line\_v2(a: Vector2, b: Vector2, c: Vector2) -\> Vector2:](#closest_point_on_line_v2a-vector2-b-vector2-c-vector2---vector2)
		- [distance\_manhattan\_v3(a: Vector3, b: Vector3) -\> float:](#distance_manhattan_v3a-vector3-b-vector3---float)
		- [distance\_chebyshev\_v3(a: Vector3, b: Vector3) -\> float:](#distance_chebyshev_v3a-vector3-b-vector3---float)
		- [length\_manhattan\_v3(a: Vector3) -\> float:](#length_manhattan_v3a-vector3---float)
		- [length\_chebyshev\_v3(a: Vector3) -\> float:](#length_chebyshev_v3a-vector3---float)
		- [closest\_point\_on\_line\_v3(a: Vector3, b: Vector3, c: Vector3) -\> Vector3:](#closest_point_on_line_v3a-vector3-b-vector3-c-vector3---vector3)
		- [closest\_point\_on\_line\_clamped\_v3(a: Vector3, b: Vector3, c: Vector3) -\> Vector3:](#closest_point_on_line_clamped_v3a-vector3-b-vector3-c-vector3---vector3)
		- [closest\_point\_on\_line\_normalized\_v3(a: Vector3, b: Vector3, c: Vector3) -\> float:](#closest_point_on_line_normalized_v3a-vector3-b-vector3-c-vector3---float)
	- [🕶️ General utilities](#️-general-utilities)
		- [func generate\_random\_string(length: int, characters: String =  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"):](#func-generate_random_stringlength-int-characters-string---abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789)
		- [is\_valid\_url(url: String) -\> bool:](#is_valid_urlurl-string---bool)
		- [frame\_freeze(time\_scale: float, duration: float):](#frame_freezetime_scale-float-duration-float)
	- [⚙️ Environment variables](#️-environment-variables)
		- [Variable tracker](#variable-tracker)
		- [Ejemplo de uso](#ejemplo-de-uso)
		- [Loading variables from other files](#loading-variables-from-other-files)
		- [Señales](#señales)
		- [get\_var(key: String) -\> String](#get_varkey-string---string)
		- [get\_var\_or\_null(key: String)](#get_var_or_nullkey-string)
		- [set\_var(key: String, value: String = "") -\> void](#set_varkey-string-value-string-----void)
		- [remove\_var(key: String)-\> void](#remove_varkey-string--void)
		- [create\_environment\_file(filename: String = ".env", overwrite: bool = false) -\> void](#create_environment_filefilename-string--env-overwrite-bool--false---void)
		- [load\_env\_file(filename: String = ".env") -\> void](#load_env_filefilename-string--env---void)
		- [flush\_environment\_variables(filename: String = ".env", except: Array\[String\] = \[\]) -\> void](#flush_environment_variablesfilename-string--env-except-arraystring-----void)
		- [add\_var\_to\_file(filename: String, key: String, value: String = "") -\> void](#add_var_to_filefilename-string-key-string-value-string-----void)
	- [🎬 Scene transitioner](#-scene-transitioner)
		- [Transicionar con una pantalla de carga intermedia](#transicionar-con-una-pantalla-de-carga-intermedia)
		- [GodotParadiseSceneTransicioner](#godotparadisescenetransicioner)
			- [transition\_to(scene, transition: PackedScene, data: Dictionary = {})](#transition_toscene-transition-packedscene-data-dictionary--)
			- [transition\_to\_with\_loading(scene: String, loading\_scene: PackedScene, data: Dictionary = {})](#transition_to_with_loadingscene-string-loading_scene-packedscene-data-dictionary--)
		- [GodotParadiseSceneTransition](#godotparadisescenetransition)
			- [Variables accessibles](#variables-accessibles)
			- [Señales](#señales-1)
	- [🎵 Audio](#-audio)
		- [Variables accessibles](#variables-accessibles-1)
		- [change\_volume(bus, value: float) -\> void](#change_volumebus-value-float---void)
		- [get\_actual\_volume\_db\_from\_bus\_name(name: String) -\> float](#get_actual_volume_db_from_bus_namename-string---float)
		- [get\_actual\_volume\_db\_from\_bus\_index(index: int) -\> float](#get_actual_volume_db_from_bus_indexindex-int---float)
		- [Ejemplo funcional:](#ejemplo-funcional)
- [✌️Eres bienvenido a](#️eres-bienvenido-a)
- [🤝Normas de contribución](#normas-de-contribución)
- [📇Contáctanos](#contáctanos)

# Requerimientos
📢 No ofrecemos soporte para Godot 3+ ya que nos enfocamos en las versiones futuras estables a partir de la versión 4.
* Godot 4+

# ✨Instalacion
## Automatica (Recomendada)
Puedes descargar este plugin desde la [Godot asset library](https://godotengine.org/asset-library/asset/2039) oficial usando la pestaña AssetLib de tu editor Godot. Una vez instalado, estás listo para empezar
## Manual 
Para instalar manualmente el plugin, crea una carpeta **"addons"** en la raíz de tu proyecto Godot y luego descarga el contenido de la carpeta **"addons"** de este repositorio

## CSharp version
Este plugin también ha sido escrito en C# y puedes encontrarlo en [SingletonBundle-CSharp](https://github.com/GodotParadise/SingletonBundle-CSharp)

# Como empezar
Cada singleton está separado por un nombre de clase que define su utilidad. Estas clases son autocargadas por Godot y añadidas a la escena raíz para que estén disponibles globalmente en todas las escenas de tu proyecto.

## 🧙‍♂️ Vector Wizard
Un conjunto de útiles utilidades vectoriales que probablemente utilices en tu trabajo diario como desarrollador de juegos. Las funciones que están marcadas como `v2` significa que se aplica a `Vector2` y `v3` que se aplica a `Vector3`. Si las funciones v3 **no tienen descripción**, significa que hacen exactamente lo mismo pero aplicado en un espacio tridimensional.

### normalize_vector(value: Vector2) -> Vector2:
Normaliza el vector sólo si no está normalizado y también cambia si es un vector diagonal y hace la normalización adecuada. Devuelve el vector
`GodotParadiseVectorWizard.normalize_vector(Vector2(30, -40)) # returns Vector2(1, -1)`

### normalize_diagonal_vector(direction: Vector2) -> Vector2:
Un vector diagonal requiere un tratamiento adicional, que se puede aplicar usando esta función:`GodotParadiseVectorWizard.normalize_diagonal_vector(Vector2(-0.7444, 0.7444))`

### is_diagonal_direction(direction: Vector2) -> bool:
Realiza una comprobación básica y devuelve si la dirección pasada como parámetro es diagonal. Esta función es utilizada internamente por la función `normalize_diagonal_vector`.

`GodotParadiseVectorWizard.is_diagonal_direction(Vector2(1, -1))`

### generate_random_direction() -> Vector2:
Simple generador aleatorio de dirección Vector2, usa esta función si necesitas una dirección aleatoria en algún comportamiento de tu juego. El resultado es normalizado

### generate_random_angle(min_angle_range: float = 0.0, max_angle_range: float = 360.0) -> float:
Genera un ángulo aleatorio entre un rango proporcionado, la unidad está en grados:
```py
# Between 90º and 120º
GodotParadiseVectorWizard.generate_random_angle(90, 120) # 117º
```

### generate_random_directions_on_angle_range(origin: Vector2 = Vector2.UP, min_angle_range: float = 0.0, max_angle_range: float = 360.0, num_directions: int = 10) -> Array[Vector2]:
Esta función genera **n** direcciones aleatorias en formato Array[Vector2] a partir de un punto vectorial inicial que define los ángulos mínimo y máximo:
```py
# 5 Random directions from Vector down (0, 1) between 90º and 180º
GodotParadiseVectorWizard.generate_random_directions_on_angle_range(Vector2.DOWN, 90, 180, 5)

# 25 random directions from the actual player global position between 0 and 360º
GodotParadiseVectorWizard.generate_random_directions_on_angle_range(player.global_position, 0, 360, 25)
```

### translate_x_axis_to_vector(axis: float) -> Vector2:
Traduce un valor decimal que suele venir de obtener el valor del eje con [Input.get_axis](https://docs.godotengine.org/en/stable/classes/class_input.html#class-input-method-get-axis) en una dirección Vector2.
`horizontal_direction := GodotParadiseVectorWizard.translate_x_axis_to_vector(Input.get_axis("ui_left", "ui_right"))`

### distance_manhattan_v2(a: Vector2, b: Vector2) -> float
También conocida como "distancia de ciudad" o "distancia L1". Mide la distancia entre dos puntos como la suma de las diferencias absolutas de sus coordenadas en cada dimensión.

*Ejemplos de dónde puede ser útil:*

**Ruta de un personaje en un laberinto:** En un juego de laberintos, puedes utilizar la distancia Manhattan para calcular la distancia entre la posición actual de un personaje y una posible salida. Esto te ayudará a determinar la dirección en la que debe moverse el personaje para llegar a la salida con el menor número de movimientos, ya que sólo permite movimientos en línea recta, como arriba, abajo, izquierda y derecha.

**Puzzle deslizante:** En los juegos de puzzle en los que debes mover piezas para resolver un puzzle, la distancia Manhattan se utiliza para calcular lo lejos que está una pieza de su posición objetivo. Cuanto más cerca esté una pieza de su posición correcta, más "encajará" en el puzzle.

### distance_chebyshev_v2(a: Vector2, b: Vector2) -> float:
También conocida como la "distancia del ajedrez" o "distancia L∞".
Mide la distancia entre dos puntos como la mayor de las diferencias absolutas de sus coordenadas en cada dimensión.

*Ejemplos de dónde puede ser útil:*

**Movimiento de un rey en ajedrez:** En una partida de ajedrez, el rey se mueve en cualquier dirección *(horizontal, vertical o diagonal)*. La distancia de Chebyshev se utiliza para determinar cuántos movimientos necesita el rey para moverse desde su posición actual hasta una casilla objetivo, ya que el rey puede moverse en cualquiera de estas direcciones.

**Movimiento en un juego de estrategia por turnos:** En un juego de estrategia por turnos, como Civilization, en el que las unidades pueden moverse en varias direcciones, la distancia de Chebyshev puede utilizarse para calcular la distancia entre dos lugares del mapa y determinar cuántos turnos se tardaría en ir de uno a otro.

### length_manhattan_v2(a : Vector2) -> float:
La función `length_manhattan_v2` calcula la longitud o magnitud de un vector bidimensional a utilizando la distancia Manhattan. La distancia Manhattan se determina sumando las diferencias absolutas de las coordenadas x e y del vector. El resultado es un valor escalar que representa la distancia total recorrida en términos de movimientos verticales y horizontales, lo que resulta útil en situaciones en las que los movimientos se producen en líneas rectas a lo largo de ejes ortogonales.

### length_chebyshev_v2(a : Vector2) -> float:
La función `length_chebyshev_v2` calcula la longitud o magnitud de un vector bidimensional a utilizando la distancia de Chebyshev. La distancia de Chebyshev se determina tomando el máximo de las diferencias absolutas entre las coordenadas x e y del vector. El resultado es un valor escalar que representa la distancia máxima recorrida en términos de movimientos en cualquier dirección, ya sea vertical, horizontal o diagonal. Esta métrica es útil en situaciones en las que pueden producirse movimientos en múltiples direcciones.

### closest_point_on_line_clamped_v2(a: Vector2, b: Vector2, c: Vector2) -> Vector2:
Esta función está diseñada específicamente para encontrar el punto más cercano en un segmento de línea, asegurando que el resultado se encuentra dentro de los límites del segmento. Resulta especialmente útil en situaciones en las que es esencial restringir el punto más cercano a la línea. 

Por ejemplo, en una aplicación de dibujo, puede emplear esta función para ajustar con precisión un punto a la posición más cercana de una línea al crear dibujos a mano alzada.

### closest_point_on_line_v2(a: Vector2, b: Vector2, c: Vector2) -> Vector2:
A diferencia de la función `closest_point_on_line_clamped_v2`, esta variante está pensada para identificar el punto más cercano en un segmento de línea sin imponer ninguna restricción sobre su ubicación dentro o fuera del segmento. Esto la hace versátil en situaciones en las que se necesita encontrar el punto más cercano en una línea pero no se requiere que esté confinado en el segmento. 

Por ejemplo, en una aplicación CAD, puede utilizar esta función para localizar el punto más cercano de una línea de croquis a un punto definido por el usuario.

### distance_manhattan_v3(a: Vector3, b: Vector3) -> float:
### distance_chebyshev_v3(a: Vector3, b: Vector3) -> float:
### length_manhattan_v3(a: Vector3) -> float:
### length_chebyshev_v3(a: Vector3) -> float:
### closest_point_on_line_v3(a: Vector3, b: Vector3, c: Vector3) -> Vector3:
### closest_point_on_line_clamped_v3(a: Vector3, b: Vector3, c: Vector3) -> Vector3:
### closest_point_on_line_normalized_v3(a: Vector3, b: Vector3, c: Vector3) -> float:

## 🕶️ General utilities
Utilidades que no tienen un lugar en particular y pertenecen a un ámbito mas global.

### func generate_random_string(length: int, characters: String =  "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"):
Puede utilizar esta función para generar una cadena aleatoria con una longitud y una lista de caracteres especificadas. Por ejemplo, puede utilizar esta función para crear códigos de invitación para sus salas multijugador:
`var invitation_code: String = GodotParadiseUtilities.generate_random_string(4, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") # returns YMZ2`

### is_valid_url(url: String) -> bool:
Como la clase String de Godot carece de esta validación puedes usar la siguiente:
`GodotParadiseUtilities.is_valid_url("https://example.com") # true`

### frame_freeze(time_scale: float, duration: float):
Para conseguir un efecto de cámara lenta puedes utilizar esta función que recibe la escala de tiempo *(como pasa el tiempo fotograma a fotograma)* y la duración de la congelación en segundos.
```py
# Time scale 0.05
# Duration 0.5 sec
GodotParadiseUtilities.frame_freeze(0.05, 0.5)
```
Aqui puedes ver un ejemplo básico que inicia un frame freeze cuando el personaje salta:
```py
func handle_jump():
	if Input.is_action_just_pressed("jump"):
		player.jump()
		GodotParadiseUtilities.frame_freeze(0.05, 1)
```
`frame_freezed` se emite cuando se inicia el efecto en caso de que quieras escucharla para realizar otras acciones como disparar animaciones.
 Aqui puedes ver un ejemplo básico:
 ```py
 func _ready():
	GodotParadiseUtilities.frame_freezed.connect(on_frame_freezed)

func on_frame_freezed():
	animated_sprite.play("juicy_hurt")
	 #...
 ```


## ⚙️ Environment variables
Para mantener la seguridad de las variables de entorno, evita codificar información sensible en tu código fuente. Mediante el uso de variables de entorno, puede garantizar que dicha información permanezca protegida.

Las variables de entorno proporcionan un método estandarizado y crucial para gestionar eficazmente la información sensible dentro de sus proyectos de software. Estas variables sirven como un repositorio seguro para almacenar una amplia gama de datos confidenciales, incluyendo pero no limitado a claves API, tokens de acceso, credenciales de bases de datos y ajustes de configuración.

Puede acceder a todas las funciones utilizando la clase `GodotParadiseEnvironment` en cualquier parte de su código. Esta clase proporciona una funcionalidad extra manteniendo la compatibilidad con `OS.get_environment()` y `OS.set_environment()` para la gestión de variables en tiempo de ejecución.
Por defecto, esta clase busca los archivos `.env` en la raíz de tu proyecto `res://` Para modificar esta ruta, puedes usar:
`GodotParadiseEnvironment.ENVIRONMENT_FILES_PATH = "res://project"`

o definir el valor de la ruta en ***Project settings -> GodotEnv -> Root directory:***
![godotenv_settings](https://github.com/GodotParadise/SingletonBundle/blob/main/images/godotenv_settings.png)

### Variable tracker
Por conveniencia de ejecución interna, el plugin rastrea las variables activas sin almacenar sus valores en un array, ya que almacenar contenido sensible en este array puede arriesgar fugas de datos o accesos no autorizados. Este enfoque permite verificar qué variables se han leído y cargado en memoria sin exponer sus valores:

`GodotEnvironment.ENVIRONMENT_VARIABLE_TRACKER # could return ["ADDRESS", "PORT", "SERVER_ID]`


### Ejemplo de uso
```py
# .env file
ADDRESS=127.0.0.1
PORT=9492

SERVER_ID=1919

# random_script.gd
GodotEnvironment.load_env_file(".env")

GodotEnvironment.get_var("PORT") # Returns an empty string if does not exists
# or
GodotEnvironment.get_var_or_null("PORT") # Returns null instead
```
**Sólo necesitas cargar tus variables de entorno una vez**, y no hay necesidad de cargarlas en cada función `_ready()` de tus nodos. Si tienes variables duplicadas, el valor utilizado será el de la última ocurrencia. Por lo tanto, es importante revisar tus archivos cuidadosamente para evitar sobreescrituras involuntarias.
```dotenv
ADDRESS=127.0.0.1
ADDRESS=192.168.1.55 # This is the one that will be assigned as it overwrites the previous one
```

### Loading variables from other files
Esta clase soporta la lectura de múltiples archivos de entorno. Para producción, es altamente recomendable abstenerse de incluir el archivo `.env` en su repositorio de código fuente. En su lugar, considere proporcionar en el repositorio un archivo `.env.example` con valores en blanco para las claves utilizadas. Esta estrategia le permite duplicar el archivo e introducir los valores en su entorno local, evitando así la exposición involuntaria de información sensible.
```dotenv
# .env.example
ADDRESS=
PORT=
SERVER_NAME=

# random_script.gd
GodotEnvironment.load_env_file(".env.example")
GodotEnvironment.load_env_file(".env.dev")
GodotEnvironment.load_env_file(".env.staging")
# ...
```

### Señales
```py
signal variable_added(key: String)
signal variable_removed(key: String)
signal variable_replaced(key: String)
signal env_file_loaded(filename: String)
```

### get_var(key: String) -> String
Esta es una alternativa a `OS.get_environment(key)` : `GodotParadiseEnvironment.get_var("SERVER_PORT")`

### get_var_or_null(key: String)
Obtiene el valor de una variable de entorno o null si no existe o su valor esta vacío: `GodotEnvironment.get_var_or_null("SERVER_PORT")`

### set_var(key: String, value: String = "") -> void
Define una variable en tiempo de ejecución, es una alternativa a `OS.set_environment(key, value)`:
`GodotEnvironment.set_var("API_KEY", "991918291921")`

### remove_var(key: String)-> void
Elimina una variable en tiempo de ejecución `GodotEnvironment.remove_var("API_KEY")`

### create_environment_file(filename: String = ".env", overwrite: bool = false) -> void
Crea un archivo de variables de entorno con el nombre especificado. Si ya existe, puede ser sobreescrito de forma opcional
```py
GodotEnvironment.create_environment_file(".env")
GodotEnvironment.add_var_to_file("env", "PORT", 3000)
GodotEnvironment.add_var_to_file("env", "ENCRYPTION_ALGORITHM", 'SHA256')
```

### load_env_file(filename: String = ".env") -> void
Lee un archivo `.env` y obtiene las variables de entorno para ser accessibles en el código:
`GodotEnvironment.load_env_file(".env.example")`

### flush_environment_variables(filename: String = ".env", except: Array[String] = []) -> void
Elimina todas las variables actuales. Puedes añadir las claves que no quieres que sean borradas en este proceso como segundo parámetro:
```py
GodotEnvironment.flush_environment_variables(".env")
GodotEnvironment.flush_environment_variables(".env", ["IP_ADDRESS", "COUNTRY"])
```

### add_var_to_file(filename: String, key: String, value: String = "") -> void
Añade un clave-valor al archivo de variables de entorno y la hace accessible al momento:
```py
GodotEnvironment.add_var_to_file("env", "PORT", 4500)
GodotEnvironment.add_var_to_file("env", "APP_NAME", 'FightingTournament')
```

## 🎬 Scene transitioner
Este manejador facilita transiciones fluidas entre escenas, ofreciendo la opción de incluir una pantalla de carga, particularmente útil para escenas más grandes.

Se puede acceder al singleton a través de `GodotParadiseSceneTransitioner`. Este gestor utiliza la clase fundacional GodotParadiseSceneTransition para gestionar las transiciones entre escenas.

Para utilizar eficazmente este sistema, es necesario crear las escenas de transición ampliando la clase fundacional `GodotParadiseSceneTransition`.

Estas escenas de transición deben incorporar las señales y parámetros esenciales necesarios para una integración perfecta con el singleton.

El `GodotParadiseSceneTransition` funciona principalmente como un contenedor para gestionar parámetros adicionales y emitir las señales apropiadas. 
Por ejemplo, considere un caso de uso real, como una escena de fundido en la que puede especificar el nombre de la animación para elegir entre distintos tipos de fundidos *(por ejemplo, `fade_in` o `fade_out`)*.

```py
# This is your transition_scene
extends GodotParadiseSceneTransition

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready():
	animation_player.animation_finished.connect(on_animation_finished)
	animation_player.play(data["animation"])
	

func on_animation_finished(name: String):
	if name in animation_player.get_animation_list():
		finished_transition.emit(data)
		queue_free()

```
Este es un ejemplo de como usar el transitioner, el parámetro `target_scene` puede ser proporcionado como una `PackedScene` o una `ruta de archivo` en formato string:
```py
var target_scene = preload("res://example.tscn") # or raw string "res://example.tscn"
var your_transition_scene = preload("res://transitions/fade.tscn")

GodotParadiseSceneTransitioner.transition_to(target_scene, your_transition_scene, {"animation": "fade_in"})
```
Es importante señalar que la señal `finished_transition` debe emitirse manualmente. Esta elección de diseño proporciona flexibilidad para determinar con precisión cuándo una transición se considera completa.

### Transicionar con una pantalla de carga intermedia
Esta clase ofrece una función diseñada para trabajar con una pantalla de carga como transición. Para utilizar esta funcionalidad, tu escena de carga personalizada también debe extender de `GodotParadiseSceneTransition` para recibir datos de progresión. 

***En este caso, la señal `finished_transition` se emite después de que el valor de progreso llegue a 1 cuando la carga de la escena se haya completado.

Esta característica es especialmente beneficiosa para escenas grandes en las que los tiempos de carga pueden ser más largos. Al proporcionar la escena, debe pasarse como una ruta de archivo, ya que nuestra clase aprovecha internamente el [ResourceLoader](https://docs.godotengine.org/en/stable/classes/class_resourceloader.html)

```py
var target_scene = "res://large_scene_example.tscn"
var loading_scene = preload("res://transitions/loading.tscn")

GodotParadiseSceneTransitioner.transition_to_with_loading(target_scene, loading)
```

En la escena de carga, se obtiene acceso a los datos de progreso y estado de carga recuperados del [ResourceLoader](https://docs.godotengine.org/en/stable/classes/class_resourceloader.html), que se pueden utilizar para mostrar información relevante. A continuación se muestra un ejemplo básico para demostrar esta funcionalidad.
Para asegurar un funcionamiento correcto, es esencial llamar a la función padre `_process()`; si no lo haces, la información no se actualizará:

```py
# res://transitions/loading.tscn
extends GodotParadiseSceneTransition

@onready var progress_bar: ProgressBar = $CenterContainer/ProgressBar

func _process(delta):
	super._process(delta)
	progress_bar.value = progress[0]
```
### GodotParadiseSceneTransicioner
#### transition_to(scene, transition: PackedScene, data: Dictionary = {})
La función principal responsable de iniciar la transición a la escena de destino es la función `transition_to`. Cualquier dato pasado a esta función será accesible dentro de la escena de transición, permitiendo la incorporación de parámetros externos según sea necesario.

Está enfocada a la transición de escenas precargadas.

El parámetro `scene` puede ser proporcionado como `PackedScene` o un `file path` en formato string.

Cabe destacar que la escena de transición se añade al viewport, no al árbol de escenas. Este enfoque garantiza que la transición se ejecute incluso si se liberan nodos del árbol principal.

#### transition_to_with_loading(scene: String, loading_scene: PackedScene, data: Dictionary = {})
Se comporta de forma idéntica a `transition_to`, pero con una distinción clave: el parámetro de escena debe proporcionarse como una cadena de ruta de archivo. Este requisito se debe a que el transicionador utiliza [ResourceLoader](https://docs.godotengine.org/en/stable/classes/class_resourceloader.html) para cargar la escena.

### GodotParadiseSceneTransition
#### Variables accessibles
- data: Dictionary
- progress: Array
- load_status: ThreadLoadStatus

```py
enum  ThreadLoadStatus:

● THREAD_LOAD_INVALID_RESOURCE = 0
#The resource is invalid, or has not been loaded with load_threaded_request().
● THREAD_LOAD_IN_PROGRESS = 1
# The resource is still being loaded.
● THREAD_LOAD_FAILED = 2
# Some error occurred during loading and it failed.
● THREAD_LOAD_LOADED = 3
# The resource was loaded successfully and can be accessed via load_threaded_get().
```
#### Señales
- *started_transition(data: Dictionary)*
- *finished_transition(data: Dictionary, next_scene)* `next_scene` it's only provided on `transition_to_with_loading`

## 🎵 Audio
Varias funciones de ayuda para gestionar los niveles de volumen de varios buses en tu juego.

### Variables accessibles
- available_buses: Array[String]

Aqui está disponible en formato array una lista de los nombres de los buses definidos en tu proyecto
```py 
GodotParadiseAudioManager.available_buses # returns ["Master", "Music", "SFX"]
```

### change_volume(bus, value: float) -> void
Cambia el volumen del bus seleccionado si existe. Puede recibirlo como indice númerico o como el nombre del bus en formato string
```py
GodotParadiseAudioManager.change_volume(1, 0.5)
# or
GodotParadiseAudioManager.change_volume("Music", 0.5)
```
### get_actual_volume_db_from_bus_name(name: String) -> float
Obtiene el valor actual del bus seleccionado por nombre. Si el bus no existe en proyecto levantará un error y retornará un valor de 0.0

```py
GodotParadiseAudioManager.get_actual_volume_db_from_bus("Music")
```

### get_actual_volume_db_from_bus_index(index: int) -> float
Obtiene el valor actual del bus seleccionado por índice númerico. Comportamiento igual a la función anterior.
```py
GodotParadiseAudioManager.get_actual_volume_db_from_index(1)
# or
GodotParadiseAudioManager.get_actual_volume_db_from_index(AudioServer.get_bus_index("Music"))
```

### Ejemplo funcional: 
Vamos a demostrar cómo estas funciones pueden ayudarnos en la gestión de audio dentro de nuestro juego:
```py
extends Control

@onready var music: HSlider = $Parameters/VBoxContainer/HorizontalContainer/Sliders/Music
@onready var sfx: HSlider = $Parameters/VBoxContainer/HorizontalContainer/Sliders/SFX


func _ready():
	music.value = GodotParadiseAudioManager.get_actual_volume_db_from_bus("Music")
	sfx.value = GodotParadiseAudioManager.get_actual_volume_db_from_bus("SFX")


func _on_music_value_changed(value):
	GodotParadiseAudioManager.change_volume("Music", value)


func _on_sfx_value_changed(value):
	GodotParadiseAudioManager.change_volume("SFX", value)

# ✌️Eres bienvenido a
- [Give feedback](https://github.com/GodotParadise/SingletonBundle/pulls)
- [Suggest improvements](https://github.com/GodotParadise/SingletonBundle/issues/new?assignees=BananaHolograma&labels=enhancement&template=feature_request.md&title=)
- [Bug report](https://github.com/GodotParadise/SingletonBundle/issues/new?assignees=BananaHolograma&labels=bug%2C+task&template=bug_report.md&title=)

GodotParadise esta disponible de forma gratuita.

Si estas agradecido por lo que hacemos, por favor, considera hacer una donación. Desarrollar los plugins y contenidos de GodotParadise requiere una gran cantidad de tiempo y conocimiento, especialmente cuando se trata de Godot. Incluso 1€ es muy apreciado y demuestra que te importa. ¡Muchas Gracias!

- - -
# 🤝Normas de contribución
**¡Gracias por tu interes en GodotParadise!**

Para garantizar un proceso de contribución fluido y colaborativo, revise nuestras [directrices de contribución](https://github.com/godotparadise/SingletonBundle/blob/main/CONTRIBUTING.md) antes de empezar. Estas directrices describen las normas y expectativas que mantenemos en este proyecto.

**📓Código de conducta:** En este proyecto nos adherimos estrictamente al [Código de conducta de Godot](https://godotengine.org/code-of-conduct/). Como colaborador, es importante respetar y seguir este código para mantener una comunidad positiva e inclusiva.
- - -

# 📇Contáctanos
Si has construido un proyecto, demo, script o algun otro ejemplo usando nuestros plugins haznoslo saber y podemos publicarlo en este repositorio para ayudarnos a mejorar y saber que lo que hacemos es útil.
