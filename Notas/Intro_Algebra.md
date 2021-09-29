 ---
 title: Algebra
 author: Efrain
 ---

## Definicion de Algebra

Un algebra se define por:
- Un conjunto de valores 
- algunas operaciones
- leyes que determinan como se 
    relacionan esas operaciones con los valores.

**monoiode** Es un tipo de algebra que tiene
    cerradura
    elemento neutro
    asociacion
Algunos ejemplos de monoides en haskell son:
- La suma de naturales $(N, +, 0)$
- La concatenación de listas $(Listas, ++, [])$
- La composición de funciones unarias $(Funciones, . , id)$

```haskell
-- La suma en Enteros
(+):: Int -> Int -> Int
-- La concatenación
(++):: [a] -> [a] -> [a]
-- La composición de funciones
( . ):: (b -> c) -> (a -> b) -> (a -> c)
```

### Transformaciones naturales

Una tranformacion sirve para traducir monoides de algebra
para asi poder asociar distintas cosas con un "quizas"
```haskell
Length:: [a] -> Int
t21::Tree a -> [a]
```
