object bombon {
	var peso = 15
	
	method precio()= 5 
	method peso() =peso 
	method mordisco() { peso=0.max(peso*0.8 - 1)}
	method gusto()="frutilla"
	method libreGluten() = true 
}

object alfajor {
		var peso = 300
	
	method precio()= 12 
	method peso() =peso 
	method mordisco() { peso=0.max(peso*0.8)}
	method gusto()="chocolate"
	method libreGluten() = false 
}

object caramelo {
	var peso = 5
	
	method precio()= 1 
	method peso() =peso 
	method mordisco() { peso=0.max(peso-1)}
	method gusto()="frutilla"
	method libreGluten() = true 
}

object chupetin {
		var peso = 7
	
	method precio()= 2
	method peso() =peso 
	method mordisco() { peso=2.max(peso*0.9)}
	method gusto()="naranja"
	method libreGluten() = true 
}

object oblea {
		var peso = 250
	
	method precio()= 5
	method peso() =peso 
	method mordisco() { 
		if (peso>70){
			peso= peso.div(2) 
		}
		else{
			peso= peso*25.div(100) 
		}
	}
	method gusto()="vainilla"
	method libreGluten() = false 
}

object chocolatin {
	var pesoInicial
	var pesoActual

	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio()= pesoInicial*0.5
	method libreGluten() = false 
	method gusto()="chocolate"
	method peso() =pesoActual
	method mordisco(){
		pesoActual= 0.max(pesoActual-2)
}
}

object golosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() =golosinaInterior.precio()+2
	method peso()=golosinaInterior.peso()+4
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto()= golosinaInterior.gusto() 
	method libreGluten() = golosinaInterior.libreGluten()
}

object tuttifrutti {
	// como manejar el cambio de sabor ??
	var property libreGluten=false
	var gustos=["frutilla","chocolate","naranja"]
	var mordiscos=0
	
	method peso()=5
	method precio(){
		if(self.libreGluten()){
			return 7
		}
		else{
			return 0
		}
	}
	method gusto(){
		 gustos.get(mordiscos%gustos.size())
	// SI SE NECESITA HACER UN BUCLE DE CIERTA CANTIDAD DE DIGITOS, SE PUEDE UTILIZAR EL MODULO DE LA DIVISION ENTERA
	}
	method mordisco(){mordiscos++}
}

