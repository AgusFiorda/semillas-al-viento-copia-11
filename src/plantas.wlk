import parcelas.*

class Planta {
	var property anioDeObtencion=0
	var property altura=0	
	var property espacio=0
	//inicializo las variables para hacer los test y no tener que setear todas, solo eso.
	method horasDeSolTolera(){
		return 7
		
	}
	method esFuerte(){
		return self.horasDeSolTolera()>9
		
	}
	method daNuevasSemillas()
	
	method leResultaIdeal(parcela)
	
	
		
}
class Menta inherits Planta{
	override method daNuevasSemillas(){
		return self.altura()>0.4
	}
	override method espacio(){
		return self.altura()+1
	}
	override method leResultaIdeal(parcela){
		return parcela.superficie()>6
	}
}
class Soja inherits Planta{
		
		override method horasDeSolTolera(){
		
		if(self.altura()<0.5){
			return 6
		}
		if(self.altura().between(0.5,1)){
			return 8
		}return 12
		
		
		}
			
		override method daNuevasSemillas(){
		return self.anioDeObtencion()>2007 and self.altura().between(0.75,0.9)
	}
	override method espacio(){
		return self.altura()/2
	}
	override method leResultaIdeal(parcela){
		return self.horasDeSolTolera() == parcela.horasDeSol()
	}
	
}
class Quinoa inherits Planta{
	
	
	override method horasDeSolTolera(){
		if(self.espacio()<0.3){
			return 10
		}
		return super()
	}
	override method daNuevasSemillas(){
		return self.anioDeObtencion().between(2001,2008)
	}
	override method leResultaIdeal(parcela){
		return parcela.plantaMasAlta()<=1.5
	}
	
}
class SojaTransgenica inherits Soja{
	override method daNuevasSemillas(){
		return false
	}
	override method leResultaIdeal(parcela){
		return parcela.cantidadPlantas()==1
	}
}
class Hierbabuena inherits Menta{
	
	override method espacio(){
		 return super()*2
	}
	
}

