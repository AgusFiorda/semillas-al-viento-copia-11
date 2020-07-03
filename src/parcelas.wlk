import plantas.*

class Parcela {
	var property ancho=0
	var property largo=0
	var property horasDeSol=0
	var plantas=[]
	//inicializo las variables para no tener que setear todo en los test!
	
	method superficie(){
		return self.ancho()*self.largo()
	}
	method cantidadMaxima(){
		if(self.ancho()>self.largo()){
			return self.superficie()/5
		}return (self.superficie()/3)+self.largo()
	}
	method tieneSangreJoven(){
		return plantas.any({sem=>sem.anioDeObtencion()>2012})
	}
	method plantarUnaPlanta(planta){
		
		if((plantas.size()+1)>self.cantidadMaxima()){
			return "error: la parcela esta llena"
		}
		if((self.horasDeSol()+2)>planta.horasDeSolTolera()){
			return "error: la planta no tolera el calor que recibe la parcela"
		}
		
		plantas.add(planta)
		return "Se agrego la planta a la Parcela"
	}
	
	method plantaMasAlta(){
		return plantas.max({p=>p.altura()}).altura()
	}
	method cantidadPlantas(){
		
		return plantas.size()
	}
	method seAsociaBien(planta)
	
	
	 method bienAsociadas(){
		return ((plantas.filter({	p=>p.seAsociaBien(p)}).size()) /  self.cantidadPlantas()) *100
	}
}
class ParcelaEcologica inherits Parcela{
	override method seAsociaBien(planta){
		return self.tieneSangreJoven() and planta.leResultaIdeal(self)
	}
	
	
}
class ParcelaIndustrial inherits Parcela{
	override method seAsociaBien(planta){
		return self.cantidadPlantas()>=2 and planta.esFuerte()
	}
	
}