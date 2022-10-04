import elementos.*

class Barrio {
	const property cantElementos = []
	
	method esCopado() = self.cantDeBuenos() > self.cantDeMalos()
	method agregarElemento(unElemento) = cantElementos.add(unElemento)
	method cantDeBuenos() = cantElementos.count({e => e.esBuena()})
	method cantDeMalos() = cantElementos.size() - self.cantDeBuenos()
}
