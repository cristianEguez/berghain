import personas.*

object mainRoom{
	
	var personas = #{}
	
	method estaBailando(persona) = personas.contains(persona)
	
	method cantidadDePersonasBailando() = personas.size()
	
	method agregarPersona(persona){
		personas.add(persona)
	}
	
	method bailenTodos(){
		personas.map{ persona => self.hacerBailar(persona)}
	}
	
	method hacerBailar(persona){
		persona.disminuirEnergia(40)
		persona.aumentarDiversion(30)
	}
}

object panoramaBar{
	
	var dj
	var personas = #{}

	method estaBailando(persona) = personas.contains(persona)
	
	method cantidadDePersonasBailando() = personas.size()
	
	method agregarPersona(persona){
		personas.add(persona)
	}
	
	method bailenTodos(){
		personas.map{ persona => self.hacerBailar(persona)}
	}	
	
	method dj(unDj){
		dj = unDj
	}
	
	method hacerBailar(persona){
		dj.hacerBailar(persona)
	}
}

object darkRoom{
	
	var personas = #{}
	
	method estaBailando(persona) = personas.contains(persona)
	
	method cantidadDePersonasBailando() = personas.size()
	
	method agregarPersona(persona){
		personas.add(persona)
	}
	
	method bailenTodos(){
		personas.map{persona => persona.cumpleanios()}
	}
}