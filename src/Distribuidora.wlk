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
	
	method costo(pedido){
		 return pedido.costo()
	}
	
	method agregarPedido(pedido){
		pedidos.add(pedido)
	}
	
	method quitarPedido(pedido){
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
	
	method darDescuento(pedido){
		if(pedido.cantidadLotes() >= self.descuentoAPartir()){
			pedido.descuento()
		}
}
}
