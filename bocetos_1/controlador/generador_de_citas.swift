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
    
    func agregar_cita(_ que_dijo: String, quien_lo_dijo: String)
    {
        let cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func imprimir_cita() -> Cita{
        return citas_creadas[0]
    }
}

/*
var citas_de_IADA = GeneradorDeCitas()

citas_de_IADA.agregar_cita("Tengo hambre", quien_lo_dijo: "Todos")
*/

