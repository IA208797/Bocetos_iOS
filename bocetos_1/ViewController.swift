//
//  ViewController.swift
//  bocetos_1
//
//  Created by alumno on 18/9/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBSegueAction func al_abrir_pantalla_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(muro_texto: "Pika pi", de_quien: "Pikachu", coder: coder)
    }
}

