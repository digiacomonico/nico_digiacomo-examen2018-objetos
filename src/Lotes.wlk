import Cerveza.*
import Lager.*
import Porter.*
import Clasica.*

class Lotes {
	var lote = []
	var costoLote
	var tipoLote
	
	method lote(){
		return lote
	}
	
	method tipoLote(tipo){
		tipoLote = tipo
	}
	
	method tipoLote(){
		return tipoLote
	}
	
	method agregarCerveza(cerveza){
		lote.add(cerveza)
	}
	
	method quitarCerveza(cerveza){
		lote.remove(cerveza)
	}
	
	method cantidadCervezas(){
		return lote.size()
	}
	
	method costo(){
		return costoLote
	}
	
	method costo(costo){
		costoLote = costo
	}
	
	//el pedido tiene que aplicar el descuento a cada lote basado en el tipo de cerveza
	// if lotes.filter({l => l.tipoCerveza() == "Clasica"}) hacer -> lotes.descuento()
	// if lotes.filter({l => l.tipoCerveza() == "Lager"}) hacer -> lotes.descuento()
	// if lotes.filter({l => l.tipoCerveza() == "Porter"}) hacer -> lotes.descuento()
	
	method descuento(){
		if (self.tipoLote() == "Lager"){
			lote.count({c => c.cantidadIngredientes()}) / lote.cantidadIngredientes().size()
		}
		else if (self.tipoLote() == "Porter"){
			lote.forEach({c => c.darDescuento("Si")})
		}
	}
	
}
