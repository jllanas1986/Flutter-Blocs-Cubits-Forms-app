# Counter Blocs & Cubits & Forms 

Este proyecto desarrolla una aplicaci'on de contador utilizando varios dos gestores de estado muy utilizados cuadno se trabaja con Flutter: Blocs y Cubits. La idea es tratar de observar la misma funcionalidad en la aplicac'ion con gestores de estados diferentes.

Por otra parte, tambi'en se implementa un formulario de registro con Cubits para poder visualizar el mismo comportamiento.

## Cubits 📂

La forma de gestionar el estado de Cubits es creando en la capa de presentaci'on el archivo **state.dart** donde se aloja el estado y el archivo **cubit.dart** donde se implementan los metodos que van a cambiar dicho estado. Despues se llamar'an a dichos metodos en el screen asignado a ese estado para mostrar las acciones en pantalla.

Estos archivos se pueden implementar automaticamente una vez se descarga la librer'ia FlutterBlocs en las dependencias del proyecto.

## Blocs 📂

Blocs gestiona el estado de la misma forma que Cubits, con la diferencia de que para cambiar el estado implementa en el archivo **event.dart** un disparador de eventos que registran los cambios en ese estado.

## Funcionalidad 🛠️



## Recursos 📚

[udemy](https://www.udemy.com/)


## Autor ✒️

- **Jose Llanas** - [jllanas1986](https://github.com/jllanas1986)









