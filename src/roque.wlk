object roque {
	var property posicion = game.at(0,0)
	var property comidaGuardada = null
	var coordAleatoria = game.at(1.randomUpTo(10),1.randomUpTo(10))
	
	method imagen() = "roque.png"
	method levantarComida(comida){
		if(comidaGuardada != null){
			game.removeVisual(comidaGuardada )
		}
		comidaGuardada= comida
	}
	method alimentar(alguien){
		if(comidaGuardada != null){
			alguien.come(comidaGuardada)
			game.addVisualIn(comidaGuardada,coordAleatoria)
			comidaGuardada = null
			}
		}
	}
