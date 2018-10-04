

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method setTrabajo(provs){}
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var provincias
	var honorarios
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method setTrabajo(prov){provincias=prov}
	method provinciasDondePuedeTrabajar() { return provincias}
	method setHonorarios(honorario){honorarios=honorario}
	method honorariosPorHora(){return honorarios}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var honorarios
	var listaprovs=#{}
	method universidad() { return universidad }
	method setUniversidad(univ) { universidad = univ }
	method setTrabajo(prov){listaprovs.add(prov)}
	method provinciasDondePuedeTrabajar() { return listaprovs }
	method setHonorarios(honorario){honorarios=honorario}
	method honorariosPorHora() { return honorarios}
}	

class EmpresaDeServicios{
	var listEmpleados=#{}
	method contratarProfesionales(empleado){return listEmpleados.add(empleado)}
	method mostrarLista(){return listEmpleados}
	method profesionalesCaros(){return listEmpleados.max{empleado=>empleado.honorariosPorHora()>=3500}}/*max o filter */
	method universidadesFormadoras(){return listEmpleados.map({empleado=>empleado.universidad()})}
	method profecionalMasBarato(){return listEmpleados.filter{empleado=>empleado.honorariosPorHora()>=3500}}
	method provinciaEstaCubierta(){return listEmpleados.contains(listEmpleados.map({provincias=>provincias.provinciasDondePuedeTrabajar()}))}
	method pocoAtractivo(){return (listEmpleados.map({honorarios=>listEmpleados.honorariosPorHora()})>3500)}
	
}