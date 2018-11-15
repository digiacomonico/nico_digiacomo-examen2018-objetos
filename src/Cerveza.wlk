class Cerveza{
	var valorLupulo
	var constLupulo
	var tipoLupulo
	
//	method tipoLupulo(tipo){
//		tipoLupulo = tipo
//	}
	
	method tipoLupulo(){
		return tipoLupulo 
	}
	
	method valorLupulo(){
		return valorLupulo
	}
	
	method tipoLupulo(origen){
		if(origen == "Importado"){
			valorLupulo = 1000
		}
		else if (origen == "Local"){
			valorLupulo = 800
	}
}

	method constLupulo(origen){
		if(origen == "Importado"){
			constLupulo = 2.4
		}
		else if (origen == "Local"){
			constLupulo = 1.6
	}
}
	method constLupulo(){
		return constLupulo
	}

	method calcularIBUS(azucar){
		return azucar * (self.constLupulo() / 2)
	}
}
