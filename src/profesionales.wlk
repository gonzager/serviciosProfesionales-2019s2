import universidad.*

class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	method provinciasDondePuedeTrabajar() {   return #{universidad.provincia()} }
	method honorariosPorHora() = universidad.honorariosRecomendados()
	
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad	
	var property honorariosPorHora = 0
	var property provinciasDondePuedeTrabajar = #{}
	
}
