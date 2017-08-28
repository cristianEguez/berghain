import personas.*
import patovas.*
import pistas.*
import DJs.*

object berghain{
	
	var patovaDeTurno
	var pistas = #{mainRoom,panoramaBar,darkRoom}
	
	method patovaDeTurno(patova){
		patovaDeTurno = patova
	}
	
	method puedePasar(persona,pista){
		if(patovaDeTurno.dejaPasarA(persona)){
			pista.agregarPersona(persona)
			return "paso"
		}else{
			return patovaDeTurno.mensajeDeRechazo()
		}
	}
	
	method gonzenEstaBailandoEnAlgunaPista() = self.estaBailandoEnAlgunaPista(gonzen)
	
	method estaBailandoEnAlgunaPista(persona){
		return	pistas.any{ pista => pista.estaBailando(persona)}
	}
	
	method bailenLosDe(pista){
		pista.bailenTodos()
	}
	
	method cuantosBailanEn(pista) = pista.cantidadDePersonasBailando()
	
	method cuantosBailanEnCadaPista() = 
		pistas.map{pista => pista.cantidadDePersonasBailando()}
	
}
