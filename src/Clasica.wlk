import Cerveza.*

class Clasica inherits Cerveza{
	var valorLevadura
//	var darDescuento

	method costo(){
		return self.valorLupulo() + valorLevadura
	}
	
	method valorDescuento(){
		return 0
	}
	
	method tipoLevadura(tipo){
		if(tipo == "Alta"){
			valorLevadura = 0.1 * self.valorLupulo()
		}
		else if (tipo == "Baja"){
			valorLevadura = 0
		}
	}
//	
//	method darDescuento(){
//		return "No"
//	}
//	
	
	
}
