import Cerveza.*

class Clasica inherits Cerveza{
	var valorLevadura

	method costo(){
		return self.valorLupulo() + valorLevadura
	}
	
	method tipoLevadura(tipo){
		if(tipo == "Alta"){
			valorLevadura = 0.1 * self.valorLupulo()
		}
		else if (tipo == "Baja"){
			valorLevadura = 0
		}
	}
	
}
