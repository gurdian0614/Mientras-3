// Calcula el �rea del rect�ngulo o el �rea del tri�ngulo
// 1. Calcular �rea del rect�ngulo
// 2. Calucar �rea del tri�ngulo
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
	
	Escribir "Area del rect�ngulo: ", CalcularAreaRectanguloTriangulo( base, altura, 1 ), " cm"
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
	
	Escribir "Area del tri�ngulo: ", CalcularAreaRectanguloTriangulo( base, altura, 2 ), " cm"
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
	
	Escribir "Area del c�rculo: ", CalcularAreaCirculo(radio), " cm"
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
	Escribir "* 1. Area del c�rculo                            *"
	Escribir "* 2. Area del cuadrado                           *"
	Escribir "* 3. Area del tri�ngulo                          *"
	Escribir "* 4. Area del rect�ngulo                         *"
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
				Escribir "Opci�n no v�lida..."
				Esperar 1 Segundo
		Fin Segun
	Fin Mientras
FinAlgoritmo
