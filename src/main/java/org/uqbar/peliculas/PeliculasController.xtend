package org.uqbar.peliculas

import org.uqbar.xtrest.api.Result
import org.uqbar.xtrest.api.XTRest
import org.uqbar.xtrest.api.annotation.Controller
import org.uqbar.xtrest.api.annotation.Get
import org.uqbar.xtrest.json.JSONUtils

/**
 * @author jfernandes
 */
 @Controller
class PeliculasController {
	extension JSONUtils = new JSONUtils
	
	@Get("/videoclub-ui-grails-homes-xtend/peliculas/:tituloContiene")
	def Result buscarPeliculas() {
		ok(VideoClub.getInstance.buscar(tituloContiene).toJson)
	}
	
	def static void main(String[] args) {
		XTRest.start(PeliculasController, 8080)
	}
	
}