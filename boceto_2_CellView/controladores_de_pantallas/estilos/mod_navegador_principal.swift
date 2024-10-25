//
//  mod_navegador_principalViewController.swift
//  boceto_2_CellView
//
//  Created by alumno on 11/10/24.
//

import UIKit

class mod_navegador_principal: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        activar_navigation_bar(activar: false)
    }
    

    
    func activar_navigation_bar(activar: Bool){
        self.navigationBar.isHidden = !activar
    }
    
    
    /*
    // MARK: - Navigation

    
     
     
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
