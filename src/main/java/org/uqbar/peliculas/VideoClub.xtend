package org.uqbar.peliculas

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

/**
 * @author jfernandes
 */
class VideoClub {
	val List<Pelicula> peliculas
	new() {
		val cienciaFiccion = new Genero("Ciencia Ficcion")
		val belica = new Genero("Belica")
		val zombies = new Genero("Zombies")
		peliculas = #[
			new Pelicula("Volver al Futuro I", cienciaFiccion, "Michael J. Fox, Chistopher Lloyd, Lea Thompson"),
			new Pelicula("Volver al Futuro II", cienciaFiccion, "Michael J. Fox, Chistopher Lloyd, Lea Thompson"),
			new Pelicula("Volver al Futuro III", cienciaFiccion, "Michael J. Fox, Chistopher Lloyd, Lea Thompson"),
			new Pelicula("2001: Odisea espacial", cienciaFiccion, "Arthur C. Clarke, Keir Dullea"),
			new Pelicula("Rescatando al Soldado Ryan", belica, "Tom Hanks, Matt Damon, Edward Burns"),
			new Pelicula("La delgada linea roja", belica, "James Caviezel, Sean Penn, Nick Nolte"),
			new Pelicula("Soy Leyenda", zombies, "Will Smith"),
			new Pelicula("El amanecer de los muertos", zombies, "Sarah Polley, Ving Rhames")
		]
	}	
	static val INSTANCE = new VideoClub
	def static getInstance() {
		INSTANCE
	}
	
	def buscar(String titulo) {
		peliculas.filter[it.titulo.toLowerCase.contains(titulo.toLowerCase)].clone
	}
	
}

@Accessors
class Pelicula {
	String titulo
	Genero genero
	String actores
	new(String nombre, Genero genero, String actores) {
		this.titulo = nombre
		this.genero = genero
		this.actores = actores
	}
	
	def getDescripcionGenero() {
		genero.descripcion
	}
}

@Accessors
class Genero {
	String descripcion
	
	new(String desc) {
		descripcion = desc
	}
	
}
