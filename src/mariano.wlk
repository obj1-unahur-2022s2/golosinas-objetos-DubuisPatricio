import golosinas.*
object mariano {
	// para este objeto no damos pistas
	// definimos algunos métodos para que compile el test
	var golosinas=[]
	var golosinasDesechadas=[]
	
	method comprar(golosina) { golosinas.add(golosina)}
	method comprarVarias(variasGolosina){golosinas.addAll(variasGolosina)}
	method desechar(unaGolosina){golosinas.remove(unaGolosina);golosinasDesechadas.add(unaGolosina)}
	method vaciarBolsa(){golosinas.clear()}
	method cantidadDeGolosinas()=golosinas.size()
	method tieneGolosina(unaGolosina)= golosinas.contains(unaGolosina)
	method probarGolosinas() { 
		golosinas.forEach{g=>g.mordisco()}
	}
	method hayGolosinaSinTACC()=golosinas.any{g=>g.libreGluten()}
	method preciosCuidados()=golosinas.all{g=> g.precio()<=10 }
	method golosinaDeSabor(unSabor)=golosinas.find({g=> g.gusto() == unSabor })
	method golosinasDeSabor(unSabor)=golosinas.filter({g=> g.gusto() == unSabor })
	method sabores()=golosinas.map({g=>g.gusto()}).asSet()
	method golosinaMasCara()= golosinas.max{g=>g.precio()}
	method precioGolosinaMasCara()= self.golosinaMasCara().precio()
	method pesoGolosinas()= golosinas.sum({g => g.peso()})
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(golosinas.asSet())
		// al usar diferencia de conjuntos recordar el conjunto al que se le hace es importante para los resultados 
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.asSet().difference(self.sabores())
	}
	// metodos desafio
	method gastoEn(sabor)= self.golosinasDeSabor(sabor).sum({g=>g.precio()})
	method precioGolosinaMasCara(sabor){
		return self.golosinasDeSabor(sabor).max({g=>g.precio()}).precio()
	}
	method cantidadGolosinasDeUSabor(unSabor)= self.golosinasDeSabor(unSabor).size()
	method saborMasPopular()= self.sabores().max({sabor=>self.cantidadGolosinasDeUSabor(sabor)})
	method comproYDesecho(golosina){
		golosinasDesechadas.contains(golosina)
	}
	
}

