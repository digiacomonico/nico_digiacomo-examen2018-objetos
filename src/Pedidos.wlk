import Cerveza.*
import Lager.*
import Porter.*
import Clasica.*
import Lotes.*

class Pedidos {
	var lotes = #{}
	
	method agregarLote(lote){
		lotes.add(lote)
	}
	
	method quitarLote(lote){
		lotes.remove(lote)
	}
	
		
	method costo(lote){
		return lotes.size() * lote.costo()
	}
}
