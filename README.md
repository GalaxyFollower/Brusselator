# Brusselator
Brusselator - Advanced Numerical Methods

##Instrucciones para ejecutar
**Para generar la matriz A:**
A = generate_A_matrix (m, a, b, delt1, delt2, L);

**Para calcular los autovalores de A de manera analítica:**
Aeig = eigen_form(m, a, b, delta1, delta2, L)

**Para calcular los autovalores de forma numérica:**
E = custom_eig (A ,s);