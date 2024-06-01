// Calcula el área del rectángulo o el área del triángulo
// 1. Calcular área del rectángulo
// 2. Calucar área del triángulo
Funcion area <- CalcularAreaRectanguloTriangulo ( base, altura, opcionCalculo )
	a <- base * altura
	
	Si opcionCalculo == 1 Entonces
		area <- a
	SiNo
		area <- a / 2
	Fin Si
Fin Funcion

Funcion area <- CalcularAreaCuadrado ( lado )
	area <- lado ^ 2
Fin Funcion

Funcion area <- CalcularAreaCirculo ( radio )
	area <- PI * radio ^ 2
Fin Funcion

Funcion AreaRectangulo
	Limpiar Pantalla
	Escribir "**************************************************"
	Escribir "*              AREA DEL RECTANGULO               *"
	Escribir "**************************************************"
	Escribir "Ingrese la base (cm):"
	Leer base
	Escribir "Ingrese la altura (cm):"
	Leer altura
	
	Escribir "Area del rectángulo: ", CalcularAreaRectanguloTriangulo( base, altura, 1 ), " cm"
	EsperarConTecla()
Fin Funcion

Funcion AreaTriangulo
	Limpiar Pantalla
	Escribir "**************************************************"
	Escribir "*               AREA DEL TRIANGULO               *"
	Escribir "**************************************************"
	Escribir "Ingrese la base (cm):"
	Leer base
	Escribir "Ingrese la altura (cm):"
	Leer altura
	
	Escribir "Area del triángulo: ", CalcularAreaRectanguloTriangulo( base, altura, 2 ), " cm"
	EsperarConTecla()
Fin Funcion

Funcion AreaCuadrado
	Limpiar Pantalla
	Escribir "**************************************************"
	Escribir "*               AREA DEL CUADRADO                *"
	Escribir "**************************************************"
	Escribir "Ingrese el lado (cm):"
	Leer lado	
	
	Escribir "Area del cuadrado: ", CalcularAreaCuadrado(lado), " cm"
	EsperarConTecla()
Fin Funcion

Funcion AreaCirculo
	Limpiar Pantalla
	Escribir "**************************************************"
	Escribir "*               AREA DEL CIRCULO                 *"
	Escribir "**************************************************"
	Escribir "Escriba el valor del radio (cm):"
	Leer radio	
	
	Escribir "Area del círculo: ", CalcularAreaCirculo(radio), " cm"
	EsperarConTecla()
Fin Funcion

Funcion EsperarConTecla
	Escribir "Presione cualquier tecla para continuar...."
	Esperar Tecla
Fin Funcion

Funcion resultado <- Menu
	Limpiar Pantalla
	Escribir "**************************************************"
	Escribir "*                    MENU                        *"
	Escribir "* 1. Area del círculo                            *"
	Escribir "* 2. Area del cuadrado                           *"
	Escribir "* 3. Area del triángulo                          *"
	Escribir "* 4. Area del rectángulo                         *"
	Escribir "* 5. Salir                                       *"
	Escribir "**************************************************"
	Leer resultado
Fin Funcion

Algoritmo Mientras_3
	Mientras op <> 5 Hacer
		op <- Menu()
		Segun op Hacer
			1:
				AreaCirculo()
			2:
				AreaCuadrado()
			3:
				AreaTriangulo()
			4:
				AreaRectangulo()
			5:
				Escribir "Hasta Luego..."
			De Otro Modo:
				Escribir "Opción no válida..."
				Esperar 1 Segundo
		Fin Segun
	Fin Mientras
FinAlgoritmo
