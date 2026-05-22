import cosas.*

object camion {
    const lleva = []
    method peso() = 1000
    method sobrepasaSuCapacidad() = self.peso() + lleva.sum({c => c.peso()}) > 2500 

    method nivelDePeligrocidad() = lleva.sum({c => c.peligrosidad()})

    method cargar(cosa) {
      lleva.add(cosa)
    }

    method descargar(cosa) {
      lleva.remove(cosa)
    }
    
    method llevaPesosPares() = lleva.all({ c => c.peso().even() })

    method tieneAlgunaCosaQuePese(pesoDeseado) = lleva.any({c => c.peso() == pesoDeseado})

    method tienePeligrosidad(nivelDePeligrosidad) = lleva.find({c => c.peligrosidad() >= nivelDePeligrosidad})

    method listaDeCosasConPeligrosidadMayorA(nivelDePeligrosidad) = lleva.filter({c => c.peligrosidad() > nivelDePeligrosidad})

    method superaLaPeligrosidadDe(cosa) = lleva.filter({c => c.peligrosidad() > cosa.peso()})

    method puedeCircularEnRuta(peligrosidad) = !self.sobrepasaSuCapacidad() and lleva.all({c => c.peligrosidad() < peligrosidad})

    method tieneAlgunaCosaquePeseEntre_Y_(menorValor, mayorValor) = lleva.any({c => c.peso().between(menorValor, mayorValor)})

    method maximaCosaQueLleva() = lleva.max({c => c.peso()})



}