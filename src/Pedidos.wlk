import Cerveza.*
import Lager.*
import Porter.*
import Clasica.*
import Lotes.*

class Pedidos {
	var lotes = []
	var valorDescuento = 0
	var distancia
	
	method agregarLote(lote){
		lotes.add(lote)
	}
	
	method quitarLote(lote){
		lotes.remove(lote)
	}
	
	method cantidadLotes(){
		return lotes.size()
	}
	
	method costo(){
		return (lotes.sum({l => l.costo()})) * (1 -valorDescuento) 
	}
	
	// Si da descuento, decirle al pedido que lo haga
	// pedido.hacerDescuento()
	
	method distancia(){
		return distancia
	}
	
	method distancia(kms){
		distancia = kms
	}

//	method calcularDescuento(){
//		if(self.kms() < 10){
//			valorDescuento = 0.1
//		}
//		else valorDescuento = 0.0
//		} 	
//
	
	method descuento(){
	 	if(lotes.filter({l => l.tipoLote() == "Lager"}).size() > 0){
	 		var ingredientes = lotes.filter({l => l.tipoLote() == "Lager"}).first().lote().first().cantidadIngredientes()
	 		if(ingredientes > 5){
	 			valorDescuento = 0.2
	 		}
	 		else if (ingredientes >= 2){
	 			valorDescuento = 0.02 * ingredientes
	 		}

	 	}
 		else if (lotes.filter({l => l.tipoLote() == "Porter"}).size() > 0){
 			if(self.distancia() < 10){
 				valorDescuento = 0.1
 			}
 		}
	}
	
	
	
	// Descuento:
	// El descuento lo tengo que hacer basado en: La Lager da 20% de descuento si tiene más de 5 ingredientes sino da el 2% por cada
	//ingrediente. Si no tiene ingredientes entonces el descuento es 0%
	
	
}
	//		if (lotes.map({l => l.tipoLote() == "Clasica"}) ){
//			lotes.descuento()
//		}
//		else if (lotes.map({l => l.tipoLote() == "Lager"}) ){
//			lotes.descuento()
//		}
//
//		else if (lotes.map({l => l.tipoLote() == "Clasica"}) ){
//			lotes.descuento()
		
		//el pedido tiene que aplicar el descuento a cada lote basado en el tipo de cerveza
		// if lotes.filter({l => l.tipoCerveza() == "Clasica"}) hacer -> lotes.descuento()
		// if lotes.filter({l => l.tipoCerveza() == "Lager"}) hacer -> lotes.descuento()
		// if lotes.filter({l => l.tipoCerveza() == "Porter"}) hacer -> lotes.descuento()
		
// Porter
//	method darDescuento(decision){
//		darDescuento = decision
//	}
//	
//	override method darDescuento(){
//		return darDescuento
//	}
//	
//	

// Lager

//	override method darDescuento(){
//		return "darDescuento"
//	}
//	
//	method calcularDescuento(){
//		if(self.cantidadIngredientes() > 5 && self.darDescuento() == "Si"){
//			valorDescuento = 0.2
//		}
//		else if (self.cantidadIngredientes() >= 2 && self.darDescuento() == "Si"){
//			valorDescuento = 0.02*(self.cantidadIngredientes())
//		}
//		else{
//			valorDescuento = 0.0
//		} 
//	}
//	
//	method darDescuento(decision){
//		darDescuento = decision
//	}