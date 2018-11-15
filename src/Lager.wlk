import Clasica.*

class Lager inherits Clasica {
	
	var ingredientes = []
	var valorDescuento
	
	
	override method costo(){
		return (self.valorLupulo() + valorLevadura + (self.cantidadIngredientes() * 50)) //* (1 -valorDescuento)
	}
	
	override method valorDescuento(){
		return valorDescuento
	}
	

	
	
	method agregarIngredientes(ingrediente){
		ingredientes.add(ingrediente)
	}
	
	method quitarIngrediente(ingrediente){
		ingredientes.remove(ingrediente)
	}
	
	method cantidadIngredientes(){
		if(ingredientes.size() == null){
			return 0
		}
		else return ingredientes.size()
	}
	
}
