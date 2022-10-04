
object nivelDeProduccion{
	var property nivel
}

class Elementos {
	method recibirAtaque(unaPlaga) {unaPlaga.efectoDelAtaque()}
}

class Hogar inherits Elementos {
	var property mugre
	var property confort
	
	method esBuena() = mugre < confort * 0.5
	override method recibirAtaque(unaPlaga) {
		mugre += unaPlaga.nivelDeDanio()
		super(unaPlaga)
	}
}

class Huerta inherits Elementos {
	var property capacidadDeProduccion
	
	method esBuena() = nivelDeProduccion.nivel() < capacidadDeProduccion
	override method recibirAtaque(unaPlaga) {
		capacidadDeProduccion -= unaPlaga.nivelDeDanio() * 0.1
		if (unaPlaga.transmiteEnfermedades()) capacidadDeProduccion -=10
		super(unaPlaga)
	}
}

class Mascota inherits Elementos {
	var nivelDeSalud
	
	method esBuena(){return nivelDeSalud > 250}
	override  method recibirAtaque(unaPlaga) {
		if (unaPlaga.transmiteEnfermedades()) nivelDeSalud -= unaPlaga.nivelDeDanio()
		super(unaPlaga)
	}
}

