object paquete {
	var pagado = true
	var mensajero = neo
	var destino = matrix
	
	method pagado(_pagado) {
		pagado = _pagado
	}
	method pagado() {
		return pagado
	}
	
	method mensajero(_mensajero) {
		mensajero = _mensajero
	}
	
	method destino(_destino) {
		destino = _destino
	}
	
	method puedeLLevarse() {
		return self.estaPago() && self.destinoPuedeRecibirA()
	}
	
	method estaPago() {
		return self.pagado()
	}
		
	method destinoPuedeRecibirA() {
		return destino.puedeRecibirA(mensajero)
	}
}

//DESTINOS
object matrix {
	method puedeRecibirA(mensajero) {
		return mensajero.puedeLLamar()
	}
}

object brooklyn {
	method puedeRecibirA(mensajero) {
		return mensajero.peso() <= 1000
	}
}

//MENSAJEROS
object neo {
	var tieneCredito = true
	
	method peso() {
		return 0
	}
	method puedeLLamar() {
		return tieneCredito
	}
	
	method tieneCredito(_tieneCredito) {
		tieneCredito = _tieneCredito
	}
}

object norris {
	
	method peso() {
		return 900
	}
	
	method puedeLLamar() {
		return true
	}
}

object hawk {
	var pesoPropio = 10
	var vehiculo = bicicleta
	
	method pesoPropio(_pesoPropio) {
		pesoPropio = _pesoPropio
	}
	
	method puedeLLamar() {
		return false
	}
	
	method peso() {
		return pesoPropio + vehiculo.peso() 
	}
	
	method vehiculo(_vehiculo) {
		vehiculo = _vehiculo
	}
}

object bicicleta {
	method peso() {
		return 10
	}
}

object camion {
	const peso = 500
	var pesoAcoplado = 500
	var acoplados = 0
	
	method peso() {
		return peso + self.pesoAcoplados()
	}
	
	method pesoAcoplados() {
		return acoplados * pesoAcoplado 
	}
	
	method acoplados(_acoplados) {
		acoplados = _acoplados
	}
}