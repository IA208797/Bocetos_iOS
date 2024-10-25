//
//  ControladorPantallaDelPost.swift
//  boceto_2_CellView
//
//  Created by alumno on 11/10/24.
//

import UIKit

class ControladorPantallaDelPost: UIViewController {
    let proveedor_publicaciones = ProveedorDePublicaciones.autoreferencia
        
        @IBOutlet weak var titulo_de_publicacion: UILabel!
        @IBOutlet weak var nombre_de_usuario: UILabel!
        @IBOutlet weak var cuerpo_de_publicacion: UILabel!
        @IBOutlet weak var seccion_comentarios: UICollectionView!
        public var id_publicacion: Int?
        
        private var publicacion: Publicacion?
        private var usuario: Usuario?
        private var lista_comentarios: [Comentario] = []

        override func viewDidLoad() {
            super.viewDidLoad()
            

            // Do any additional setup after loading the view.
            
            
            let controlador_de_navegacion = self.navigationController as? mod_navegador_principal
            controlador_de_navegacion?.activar_navigation_bar(activar: true)
            
            realizar_descarga_de_informacion()
        }
        
        func realizar_descarga_de_informacion(){
            if self.publicacion == nil {
                proveedor_publicaciones.obtener_publicacion(id: self.id_publicacion ?? -1, que_hacer_al_recibir: {
                    [weak self] (publicacion) in self?.publicacion = publicacion
                    DispatchQueue.main.async {
                        self?.dibujar_publicacion()
                    }
                })
            }
            
            else if self.publicacion != nil {
                proveedor_publicaciones.obtener_usuario(id: publicacion!.userId, que_hacer_al_recibir: {
                    [weak self] (usuario) in self?.usuario = usuario
                    DispatchQueue.main.async {
                        self?.dibujar_publicacion()
                    }
                })
            }
            
            
            
        }
        
        func dibujar_publicacion(){
            guard let publicacion_actual = self.publicacion else {
                return
            }
            
            titulo_de_publicacion.text = publicacion_actual.title
            cuerpo_de_publicacion.text = publicacion_actual.body
            
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