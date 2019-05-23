import elementos.*

class Barrio{
	var property elementos = []
	
	method agregarElemento(ele){
		elementos.add(ele)
	}
	method agregarElementos(elems){
		elementos.addAll(elems)
	}
	method esbueno(elemento){
		return elemento.esBueno()
	}
	method barrioCopado(){
		var  buenos =[]
		var malos=[]
		buenos.addAll(elementos.filter({ele => ele.esBueno()}).asList())
		malos.addAll(elementos.filter({ele => not ele.esBueno()}).asList())
		
		return buenos.size() > malos.size()
	}
}
