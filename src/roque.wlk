object roque {
	var property posicion = game.at(0,0)
	var property comidaGuardada = null
	var coordAleatoria = game.at(1.randomUpTo(10),1.randomUpTo(10))
	
	method imagen() = "roque.png"
	method levantarComida(comida){
		if(comidaGuardada != null){
			// TODO El clone no es necesario, up ya te da una nueva posición.
			game.addVisualIn(comidaGuardada,posicion.clone().up(1))
			comidaGuardada = comida
			game.removeVisual(comida) 
		}
		else{
			// TODO Esta línea está repetida más arriba, es sutil pero sería más prolijo si lo puedo poner una sola vez.
			// Y de paso, menos propenso a errores, porque arriba hace remove visual y acá no => es inconsistente.
			comidaGuardada = comida
		}
	}

	method alimentar(alguien){
		if(comidaGuardada != null){
			alguien.come(comidaGuardada)
			// TODO Estás usando un atributo para algo que se usa sólo en este método: usá una variable local.
			coordAleatoria=game.at(1.randomUpTo(10),1.randomUpTo(10))
			game.addVisualIn(comidaGuardada,coordAleatoria)
			comidaGuardada = null
		}
		}
	}
