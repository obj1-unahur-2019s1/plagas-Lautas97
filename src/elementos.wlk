import plagas.*

class Hogar{
	var property mugre = 0
	var property confort = 0
	
	
	method plaga(plaga){
		mugre = plaga.danioProducido()
	}
	method esBueno(){
		return mugre <= confort / 2
	}
}

class Huerta{
	var property capacidadProduccion = 0
	
	method plaga(plaga){
		capacidadProduccion -= plaga.danioProducido()*0.10 
		if(plaga.transmiteEnfermedades() or plaga.transtimeteCucaracha()){
			capacidadProduccion -= 10
		}
	}
	
	method esBueno(){
		return capacidadProduccion > configHuerta.nivel()
	}
	
}

object configHuerta{
	var property nivel =0
}

class Mascota{
	var property nivelSalud =0
	
	method esBueno(){
		return nivelSalud > 250
	}
}