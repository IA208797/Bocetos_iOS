//
//  ControladorCita.swift
//  bocetos_1
//
//  Created by alumno on 20/9/24.
//

import SwiftUI

class ControladroVustaCutas: UIViewController {

    @IBOutlet weak var nonbre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_que: UILabel!
    
    required init?(coder: NSCoder){
        texto = ""
        super.init(coder: coder)

        print("Algo pasó por aquí")
    }
    
    init(titulo_secundario: String, coder: NSCoder){
        
        texto = titulo_secundario
        super.init(coder: coder)!

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Me estoy ejecutando")
        nombre_de_quien_lo_dijo
    }


}
