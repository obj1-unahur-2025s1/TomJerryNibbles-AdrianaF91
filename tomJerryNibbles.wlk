object tom {
    var energia = 50
    var distanciaRecorrida = 0
    
    method energia(){
        return energia
    }
    method comerRaton(unRaton){
        energia = energia + 12 + unRaton.peso()
    }
    method correr(metros){
        energia = energia - metros/2
        distanciaRecorrida = distanciaRecorrida + metros
    }
    method velocidadMaximaQuePuedeCorrer(){
        return 5 + energia /10
    }
    method puedeCazar(distancia){
      return energia >= distancia / 2 // dividido por 2 porque es la energia que consume al correr
    }
    method cazarRaton(unRaton, unaDistancia){
      if (self.puedeCazar(unaDistancia)){
        self.correr(unaDistancia)
        self.comerRaton(unRaton)
      }
    }
}

object jerry {
  var edad = 2

  method peso (){
    return edad*20
  }
  method cumplirAnios(){
    edad += 1
  }
}

object nibbles {
  method peso() {
    return 35
  }
}

// Inventar otro ratón
object mickey{
  // puede cambiar su peso a voluntad
    var peso = 30
    method peso() {
        return peso
    }
    method peso(nuevoPeso) {
        peso = nuevoPeso
    }
}