import Clasica.*

class Porter inherits Clasica{
	var costoLogistica
	
	override method costo(){
		return (self.valorLupulo() + valorLevadura) * (1 +self.costoLogistica())
	}
	
	method cantidadKms(kms){
		costoLogistica = (2 * kms)/100
	}
	
	method costoLogistica(){
		return costoLogistica
	}
	
}
