---
title: Funciones lambda
author: Efraín
header-includes:
- \usepackage{ amssymb }
- \usepackage{ mathrsfs }
- \usepackage{ amsmath }
---



## funcion cociente
$x < a$

$$\text{quot}(a,b) = \begin{cases}
    0 \quad                                 &\text{if} \: a < b \\
    \text{Succ}(\text{quot}(a-b,b)) \quad   &\text{otherwise} \\
\end{cases}$$

$$\text{f}(x) = \begin{cases}
    x &, x < 0 \\
    -x &, \text{otherwise} \\
\end{cases}$$

## funcion maximo comun divisor
$$\text{gcd}(a,b) = \begin{cases}
    a \quad &\text{if}\: b=0 \\
    \text{gcd}(b, \text{rem}(a,b) &\text{otherwise})
\end{cases}$$

$$\text{rem}(a,b) = \begin{cases}
    a                                   &\text{if}\: a < b\\
    \text{rem}(b, \text{rem}(a-b,b))    &\text{otherwise}
\end{cases}$$


$$n! = \begin{cases}
    1           &\text{if}\: n = 0\\
    n*(n-1)!    &\text{otherwise}
\end{cases}$$


$$\text{}() = \begin{cases}
    &\text{if}\: \\
    &\text{otherwise}
\end{cases}$$



