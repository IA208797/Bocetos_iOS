//
//  ViewController.swift
//  bocetos_1
//
//  Created by alumno on 18/9/24.
//

import UIKit

class ViewController: UIViewController {
    var cita_para_generar: Cita = Cita(quien_lo_dijo: "Creeper", que_dijo: "Tsssssseñor")
    var citas_disponibles: GeneradorDeCitas = GeneradorDeCitas()
    var numero_aleatorio: Int = Int.random(in: 0...25)
    
    @IBOutlet weak var labelcito: UILabel!
    
    
    override func viewDidLoad() {
        citas_disponibles.generar_citas_falsas()
        super.viewDidLoad()
        // Do any additional setup after loading the let valor = Int.random(in: 0...100)
        actualizar_cantidad()
    }

    func actualizar_cantidad(){
        labelcito.text = String(citas_disponibles.citas_creadas.count)
    }
    
    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(cita_para_citar: citas_disponibles.obtener_cita_aleatoria(), coder: coder)
    }
    
    @IBAction func al_pulsar_boton(_ sender: UIButton){
        
    }
    
    @IBAction func volver_a_pantalla_inicio(segue: UIStoryboardSegue){
        let pantalla_citas = segue.source as? ControladorPantallaCitas
        print(pantalla_citas?.cita_actual.texto)
        
        if let pantalla_citas = segue.source as? ControladorPantallaCitas {
            citas_disponibles.agregar_cita(pantalla_citas.cita_actual.texto, quien_lo_dijo: pantalla_citas.cita_actual.nombre)
        }else
        {
            print("Eso no era un objeto de tipo <ControladorPantallaCitas>")
        }
        
        actualizar_cantidad()
    }
}

