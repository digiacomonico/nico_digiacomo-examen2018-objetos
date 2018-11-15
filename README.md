# Rtas

- costo() es polimorfico a todas las clases menos a Distribuidora, donde en costo(pedido) se calcula el costo de un pedido.

- Al entender que se iba a tratar de cervezas, con sus diferencias dependiendo cada una pero con un core comun, decidi crear la clase Cerveza, donde tengo los atributos valorLupulo, constLupulo y tipoLupulo, y los metodos tipoLupulo(), que devuelve el tipoLupulo, tipoLupulo(origen) donde calcula y asigna el valorLupulo en base al origen del mismo, constLupulo(), que devuelve el constLupulo, constLupulo(origen) donde calcula y asigna la constante de lupulo en base al origen del mismo y calcularIBUS(azucar), que calcula y el IBUS en base a la cantidad de azucar que se pasa por parametro y a la constante de lupulo dividido 2.
    
-Posteriormente, cree la clase Clasica, que al ser una cerveza pero con sus particularidades, hereda de la clase Cerveza.
     
-Posteriormente, cree las clases Porter y Lager (con sus particularidades), que heredan de la clase Clasica, ya que el metodo                                                            para calcular ValorLupulo esta en esta.
        
- Por otro lado, cree la clase Lote, donde cree la lista lotes, y estos se populan con cervezas.
        
- Tambien cree la clase Pedido, donde cree la lista lotes y esta se popula con lotes de cervezas.
        
- Por ultimo cree la clase Distribuidora, donde cree la lista pedidos, que se popula con pedidos.
