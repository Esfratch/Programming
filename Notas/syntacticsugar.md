---
author: Efraín
title: azucar sintactico
---

```haskell
[a..b]
[1,1] = 1:1:[]
"ab" = ['a','b']

-- Do notation for bind (>>=)
f >>= (\x -> g x >> h)

do x <- f 
    g x
    h
-- New comment on guards
guards -> if
(+4) -> flip (+) 4
[a] -> lista a
[f x | x <- xs , p x]

```
load
type
shell
info
hind

## Maneras de resolver un problema

- **math cases**: trata de dar casos sobre lo que se trata una funcion 
- **recursion**: con vace de lineas (Haskell ejemplo) generales se crea una llamada al final de la misma funcion y asi se repite
- **compresion**: trata resumir una funcion en base de listas
- **composicion**: sirve para crear funciones
