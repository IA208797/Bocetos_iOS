//
//  generador_de_citas.swift
//  bocetos_1
//
//  Created by alumno on 18/9/24.
//

import Foundation

class GeneradorDeCitas{
    var citas_creadas: Array<Cita>
    
    init(){
        citas_creadas = []
    }
    
    func agregar_cita_manual(_ que_dijo: String, quien_lo_dijo: String){
        let cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func agregar_cita(_ cita_nueva: Cita){
        citas_creadas.append(cita_nueva)
    }
    
    
    func generar_citas_falsas(){
        self.agregar_cita_manual("En las sombras, donde la oscuridad es mi única compañera, guardo un secreto explosivo. Un poder que podría cambiar el mundo, si tan solo tuviera el valor de liberarlo",
                     quien_lo_dijo: "Creeper"
        )
        
        self.agregar_cita_manual("¡La vida es corta, ¡explota al máximo!",
                          quien_lo_dijo: "Creeper"
        )
        
        self.agregar_cita_manual("GRrrrrr grrr grrr GRRRRR grrrgGRGRh",
                          quien_lo_dijo: "Zombie"
        )
        
        self.agregar_cita_manual("Solia ser un explorador como tu... Pero me dieron con una flecha en la rodilla",
                          quien_lo_dijo: "Guardia"
        )
        self.agregar_cita_manual("Es peligroso ir solo. Tóma esto.",
                          quien_lo_dijo: "Sabio"
        )
        
        self.agregar_cita_manual("¿Qué es un hombre? Una pequeña y miserable pila de secretos.",
                          quien_lo_dijo: "Drácula"
        )
        
        self.agregar_cita_manual("Lo siento, Mario, pero la princesa está en otro castillo.",
                          quien_lo_dijo: "Toad"
        )
        
        self.agregar_cita_manual("Mira detrás de ti, ¡Un mono de tres cabezas!",
                          quien_lo_dijo: "Monkey Island"
        )
        
        self.agregar_cita_manual("El hombre sabio no teme preguntar, pero el hombre sabio siempre cuestiona las respuestas que recibe.",
                          quien_lo_dijo: "Kvothe"
        )
        
        self.agregar_cita_manual("El tiempo cura todas las heridas, pero sólo si estás dispuesto a dejarlo hacerlo",
                          quien_lo_dijo: "El nombre del viento"
        )
        
        self.agregar_cita_manual("Aunque soy Hylia renacida, sigo siendo la hija de mi padre y tu amiga. Sigo siendo tu Zelda… Así que te voy a pedir un favor, dormilón. Desde que éramos niños, siempre era yo la que te despertaba cuando te dormías. Pero esta vez, cuando todo esto termine, ¿vendrás a despertarme?", 
                                 quien_lo_dijo: "Zelda - Skyward Sword"
        )
        
        self.agregar_cita_manual("Umm... ¿Puedo hacer... una pregunta? Lo correcto... ¿qué es? Me pregunto... si haces lo correcto... ¿realmente hace... a todos... felices?", 
                                 quien_lo_dijo: "Niño con mascara de Gyorg"
        )
        
        self.agregar_cita_manual("Ahora veo que las circunstancias de nacimiento de uno son irrelevantes; es lo que haces con el regalo de la vida lo que determina quién eres", 
                                 quien_lo_dijo: "MewTwo"
        )
        
        self.agregar_cita_manual("Aquel viento lo codicié, supongo...", 
                                 quien_lo_dijo: "Ganondorf - Wind Waker"
        )
    }
    
    func obtener_cita_aleatoria() -> Cita{
        var cita_para_regresar: Cita
        cita_para_regresar = citas_creadas[Int.random(in: 0...citas_creadas.count-1)]
        
        return cita_para_regresar
    }
    
}

/*
var citas_de_IADA = GeneradorDeCitas()

citas_de_IADA.agregar_cita("Tengo hambre", quien_lo_dijo: "Todos")
*/

