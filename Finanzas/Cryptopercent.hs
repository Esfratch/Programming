module Cryptopercent where

-- La ganancia después de un cambio en el mercado
profit nti oti po = (nti-oti)*po/100
{-
    nti : El nuevo total
    oti : La inversion inicial
    po : El porcentaje poseido
    -}


--El nuevo porcentaje poseido tras un movimiento 
--en un fondo comun de inversion.
newPercent oti nti po m = oti*
    let nowned = oti*po+m
     in if nowned < 0
           then error "Movimiento invalido"
           else 100 * nowned / nti
{-
   oti : La inversion inicial
   nti : El nuevo total
   po : El porcentaje poseido
   m : La cantidad de dinero movida
    -}

ratio + ratio x/100 = sell
ratio (1 + x/100) = sell
diferencia del precio = (sell/ratio -1) 100
minimo -> il
total de entrada + total de entrada x/100 = total
lo que quiero de dinero = total de entreada x/100
lo que necesito del precio = lo que quiero/total invertido 100

{-
   ratio : igualdad de dinero entre monedas
   ml : moneda que sea local
   mg : cualquier otra moneda que no sea de localidad
   sell : Cuanto queda como porcentaje
    -}
