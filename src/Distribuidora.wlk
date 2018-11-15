import Cerveza.*
import Lager.*
import Porter.*
import Clasica.*
import Pedidos.*


class Distribuidora {
	var nombre
	var pedidos = #{}
	var descuentoAPartir 
	
	method nombre(razSocial){
		nombre = razSocial
	}
	
	//La distribuidora ejecuta los pedidos que se realicen de lotes de cerveza (un pedido siempre
//es de una cantidad 'x' de lotes del mismo tipo). Del pedido nos interesa saber el costo total,
//el cual se obtiene multiplicando la cantidad de lotes del pedido por el costo de cada lote.
	method costo(){
		 return 1
	}
	
	method agregarPedidos(pedido){
		pedidos.add(pedido)
	}
	
	method quitarPedidos(pedido){
		pedidos.remove(pedido)
	}
	
	method cantidadPedidos(){
		return pedidos.size()
	}
	
	method descuentoAPartir(cantidad){
		descuentoAPartir = cantidad
	}
	
	method descuentoAPartir(){
		return descuentoAPartir
	}
	
	method porcentajeDescuento(){
		if(self.descuentoAPartir() >= self.cantidadPedidos()){
			return 1
		}
		else return 0
	}
	
	
}
