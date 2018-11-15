import Cerveza.*
import Lager.*
import Porter.*
import Clasica.*

class Lotes {
	var lote = []
	var costoLote
	
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
	
}
