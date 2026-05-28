import colores.*
import motores.*
import interiores.*

class ChevyCorsa {
  const property color

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
  method peso() = interior.peso() + motor.peso()
  method velocidadMaxima() = motor.velocidadMaxima()
  method color() = blanco
}





