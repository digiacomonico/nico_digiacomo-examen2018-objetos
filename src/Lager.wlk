import Clasica.*

class Lager inherits Clasica {
	
	var ingredientes = []
	var valorDescuento 
	
	override method costo(){
		return self.valorLupulo() + valorLevadura + (self.cantidadIngredientes() * 50)
	}
	
	override method valorDescuento(){
		return valorDescuento
	}
	
	method calcularDescuento(){
		if(self.cantidadIngredientes() > 5){
			valorDescuento = 0.2
		}
		else if (self.cantidadIngredientes() >= 2){
			valorDescuento = 0.02*(self.cantidadIngredientes())
		}
		else{
			valorDescuento = 0.0
		} 
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
