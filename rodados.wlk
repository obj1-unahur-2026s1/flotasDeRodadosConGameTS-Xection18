import colores.*
import motores.*
import interiores.*
import wollok.game.*

class ChevyCorsa {
  const property color
  var position = new Position(x = 0, y = 0)
  var positionAntigua = position
  
  method verPosicion() = position
  method cambiarPosicion(nuevaPosicion) {
    positionAntigua = position
    position = nuevaPosicion
  }

  method pasoPor(posicion) = posicion == position || posicion == positionAntigua
  method pasoPorFila(numero) {
    return 
  }

  method capacidad() = 4
  method peso() = 1300
  method velocidadMaxima() = 150
}

class RenaultKwind {
  const property tieneTanque
  const property color = azul

  method capacidad() = if (!tieneTanque) 4 else 3
  method peso() = if (!tieneTanque) 1200 else 1350
  method velocidadMaxima() = if (!tieneTanque) 110 else 120
}

class AutosEspeciales {
  const property color
  const property velocidadMaxima
  const property capacidad
  const property peso

}

object trafic {
  var interior = comodo 
  var motor = pulenta

  method cambiarInterior(nuevoInterior) {interior = nuevoInterior}
  method cambiarMotor(nuevoMotor) {motor = nuevoMotor}

  method capacidad() = interior.capacidad()
  method peso() = 4000 + interior.peso() + motor.peso()
  method velocidadMaxima() = motor.velocidadMaxima()
  method color() = blanco
}





