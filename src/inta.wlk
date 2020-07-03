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
	 	return parcelas.filter({p=>p.cantidadPlantas()>4}).max({p=>p.bienAsociadas()})
	 		
	 	
	}
}
