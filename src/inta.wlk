import plantas.*
import parcelas.*

object inta {
	var parcelas=[]
	
	method agregarParcela(parcela){
		parcelas.add(parcela)
	}
	method promedioDePlantas(){
		return parcelas.sum({p=>p.cantidadPlantas()}) / (parcelas.size())
	}
	method masAutosustentable(){
	 	if(parcelas.cantidadPlantas()>4){
	 		//me quede sin tiempo :(
	 	}
	}
}
