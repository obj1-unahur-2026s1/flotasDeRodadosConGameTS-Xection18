class Pedido {
    const distanciaARecorrer 
    var tiempoMaximo
    const cantidadDePasajeros
    const coloresIncompatibles

    method velocidadRequerida() {
        return distanciaARecorrer / tiempoMaximo
    }

    method puedeSerSatisfechoPor(rodado) {
        return (
            rodado.velocidadMaxima() >= self.velocidadRequerida() + 10
            and rodado.capacidad() >= cantidadDePasajeros
            and !coloresIncompatibles.contains(rodado.color())
        )
    }

    method acelerar() {
        tiempoMaximo -= 1
    }

    method relajar() {
        tiempoMaximo += 1
    }
}