import profesionales.*
import universidad.*

class Empresa {
	var property profesionales = #{}
	var property honorarioReferencia = 0
	
	method estudiaronEn(unaUniversidad) {	
		return profesionales.count( { each => each.universidad() == unaUniversidad } )
	}
	
	method profesionalesCaros(){
		return profesionales.filter( { each => each.honorariosPorHora() > honorarioReferencia  }  )
	}
	
	method universidadesFormadoras() {
		return profesionales.map( {  each => each.universidad() } ).asSet()
	}
	
	method elMasBarato() {
		return profesionales.min( { each => each.honorariosPorHora() })
	}
	
	method esDeGenteAcotada() {
		return profesionales.all( { each =>  each.provinciasDondePuedeTrabajar().size() <= 3})
	}
	
}
