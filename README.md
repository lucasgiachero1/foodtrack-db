# FoodTrack DB

## Descripción

FoodTrack es una plataforma diseñada para gestionar las operaciones de foodtrucks ubicados en distintos puntos de una ciudad.

Este proyecto implementa el esquema inicial de una base de datos relacional en Microsoft SQL Server, permitiendo representar foodtrucks, productos, pedidos, detalles de pedidos y ubicaciones.

## Modelo de datos

La base de datos está compuesta por las siguientes tablas:

- **FoodTrucks:** almacena la información de los foodtrucks.
- **Products:** almacena los productos ofrecidos por cada foodtruck.
- **Orders:** registra los pedidos realizados.
- **Order_Items:** contiene los productos y cantidades correspondientes a cada pedido.
- **Locations:** registra la ubicación de los foodtrucks en distintas fechas.

Las tablas se relacionan mediante claves primarias (PK) y claves foráneas (FK).

## Estructura del proyecto

- `Data/`: contiene los archivos CSV utilizados para analizar y diseñar el modelo.
- `Scripts/`: contiene los scripts SQL para crear y modificar el esquema de la base de datos.

## Tecnologías utilizadas

- Microsoft SQL Server
- DBeaver
- SQL
- Git
- GitHub

