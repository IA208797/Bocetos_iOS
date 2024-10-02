//
//  ControladorPantallaCitas.swift
//  bocetos_1
//
//  Created by alumno on 23/9/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController{
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_text: UILabel!
    
    
    
    var cita_actual: Cita
    
    required init?(coder: NSCoder) {
        self.cita_actual = Cita(quien_lo_dijo: "Desarrollador", que_dijo: "Tenemos un problema. Lo hablamos en casa.")
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INNIT")
    }
    
    init?(cita_para_citar: Cita, coder: NSCoder){
        self.cita_actual = cita_para_citar
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_pantalla()
    }
    
    func inicializar_pantalla()
    {
        nombre_de_quien_lo_dijo.text = cita_actual.nombre
        que_dijo_muro_text.text = cita_actual.texto
    }
}
