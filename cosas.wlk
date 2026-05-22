object knightRider {
    method peso() = 500
    method peligrosidad() = 10    
}
object bumblebee {
    var property auto = true
    method transformaerEnAuto(){
        auto = true
    }
    method transformarEnRobot() {
        auto = false
    }
    method peso() = 800
    method peligrosidad() {
        if (auto){
            return 15
        }
        else{
            return 30
        }
    }   
}
object paqueteDeLadrillos {
    var property cantidadDeLadrillos = 100
    method tiene(cantLadrillos){
        cantidadDeLadrillos = cantLadrillos
    }
    method peso() = cantidadDeLadrillos * 2
    method peligrosidad() = 2
}

object arenaAGranel {
    var property peso = 15
    method pesa(kilos){
        peso = kilos
    }
    method peligrosidad() = 15    
}  
object bateriaAntiaerea {
    var estaCargada = true
    method cargarBateria(){
        estaCargada = false
    }
    method descargarBateria() {
        estaCargada = false
    }
    method peso() {
        if (estaCargada){
            return 300
        }
        else {
            return 200
        }
    }
    method peligrosidad() {
        if (estaCargada){
            return 100
        }
        else {
            return 0
        }
    }    
}
object contenedorPortuario {
    const contiene = [knightRider, paqueteDeLadrillos]
    method peso() = 100 + contiene.sum({c => c.peso()})
    method agregar(cosa){
        contiene.add(cosa)
    }
    method sacar(cosa){
        contiene.remove(cosa)
    }
    method peligrosidad(){
        if (contiene.isEmpty()){
            return  0 
        }
        else{
            return (contiene.max({c => c.peligrosidad()})).peligrosidad()
        }
    }
}

object residuosRadioactivos {
    var property peso = 30
    method peligrosidad() = 200 
  
}

object embalajeDeSeguridad {
    var contiene = knightRider
    method tiene(cosa) {
      contiene = cosa
    }
    method peso() = contiene.peso()
    method peligrosidad() = contiene.peligrosidad() * 0.5
  
}