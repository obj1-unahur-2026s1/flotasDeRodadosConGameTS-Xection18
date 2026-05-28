class Dependencia {
    const cantidadDeEmpleados
    const flotaDeRodados = []
    const pedidos = []

    method agregarFlota(rodado) {
        flotaDeRodados.push(rodado)
    }

    method agregarRodados(rodados) {
        rodados.addAll(rodados)
    }

    method quitarFlota(rodado) {
        flotaDeRodados.remove(rodado)
    }

    method pesoTotalFlota() {
        return flotaDeRodados.sum({rodado => rodado.peso()})
    }

    method estaBienEquipada() {
        return flotaDeRodados.size() >= 3 and flotaDeRodados.all({rodado => rodado.velocidadMaxima() > 100})
    }

    method capacidadTotalEnColor(color) {
        return self.rodadosDeColor(color).sum({rodado => rodado.capacidad()})
    }

    method rodadosDeColor(color) {
        return flotaDeRodados.filter({rodado => rodado.color() == color})
    }

    method colorDelRodadoMaxRapido() {
        return self.rodadoMasRapido().color()
    }

    method rodadoMasRapido() {
        return flotaDeRodados.max({rodado => rodado.velocidadMaxima()})
    }

    method capacidadFaltante() {
        return cantidadDeEmpleados - self.capacidadTotalDeFlota()
    }

    method capacidadTotalDeFlota() {
        return flotaDeRodados.sum({rodado => rodado.capacidad()})
    }

    method esGrande() {
        return cantidadDeEmpleados >= 40 and flotaDeRodados.size() >= 5
    }

    // pedidos 

    method agregarPedido(pedido) {
        pedidos.push(pedido)
    }

    method quitarPedido(pedido) {
        pedidos.remove(pedido)
    }

    method agregarPedidos(pedidos) {
        pedidos.addAll(pedidos)
    }

    method totalDePasajerosEnPedidos() {
        return pedidos.sum({pedido => pedido.cantidadDePasajeros()})
    }

    method relajarTodoslosPedidos() {
        pedidos.forEach({pedido => pedido.relajar()})
    }
}