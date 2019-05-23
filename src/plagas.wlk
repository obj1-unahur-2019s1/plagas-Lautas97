class Cucaracha{
	var property peso = 0
	var property poblacion = 0
	
	method danioProducido(){
		return poblacion / 2
	}
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	method transtimeteCucaracha(){
		return peso >= 10
	}
}

class Pulga{
	var property poblacion = 0
	
	method danioProducido(){
		return poblacion * 2
	}
	
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
}

class Mosquitos{
	var property poblacion = 0
	
	method danioProducido(){
		return poblacion
	}
	method transmiteEnfermedades(){
		return poblacion % 3 == 0
	}
}
