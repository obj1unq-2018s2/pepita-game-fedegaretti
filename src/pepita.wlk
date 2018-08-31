import ciudades.*
import comidas.*
object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
	var property posicion = game.at(3,3)
	var imagen ="pepita1.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method estadoFisico(){
		if(energia<10){
			imagen= "pepita.png"
		}
		else if(energia>100){
			imagen= "pepita2.png"
		}
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
		else{
			game.say(self, "ya estoy en"+ unaCiudad +"!!")	
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		if(energia>=self.energiaParaVolar(posicion.distance(nuevaPosicion))){
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.posicion(nuevaPosicion)
		}
		else {
			game.say(self,"Dame de comer primero!")
		}
	}
}	

