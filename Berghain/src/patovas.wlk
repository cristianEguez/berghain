import personas.*
import Berghain.*

object rochensen{
	
	method dejaPasarA(persona) = self.esMayorDe21(persona)
	
	method esMayorDe21(persona) = persona.edad() > 21
	
	method mensajeDeRechazo() = "hoy no es tu noche"
	
}

object rodrigsen{
	
	method dejaPasarA(persona) = self.tieneRemeraNegra(persona)
	
	method tieneRemeraNegra(persona) = persona.colorRemera() == "negra"
	
	method mensajeDeRechazo() = "hoy no es tu noche"
}

object gushtavotruccensen{
	
	method dejaPasarA(_) = false
	
	method mensajeDeRechazo() = "hoy no es tu noche"
	
}