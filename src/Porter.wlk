import Clasica.*

class Porter inherits Clasica{
	var costoLogistica
	var kms
	var valorDescuento
	
	override method costo(){
		return ((self.valorLupulo() + valorLevadura) * (1 +self.costoLogistica())) //* (1 - valorDescuento)
	}
	
	method cantidadKms(kilometros){
		kms = kilometros
		costoLogistica = (2 * kilometros)/100
	}
	
	method costoLogistica(){
		return costoLogistica
	}
	
	method kms(){
		return kms
	}
	

}