//
//  Book.swift
//  Semana3
//
//  Created by Mac19 on 30/03/24.
//

import Foundation

class Book
{
    var name: String = ""
    var anioPublicacion: String = ""
    var editorial: String = ""
    var tema: String = ""
    
    init(name: String, anioPublicacion: String, editorial: String, tema: String) {
        self.name = name
        self.anioPublicacion = anioPublicacion
        self.editorial = editorial
        self.tema = tema
    }
    
    // function para listar libros
    func listBooks() -> String
    {
        return "name: \(self.name) anioPublicacion: \(self.anioPublicacion) editorial: \(self.editorial) tema: \(self.tema)"
    }
    
    //
    func addBooks() -> String {
        return "Agregando libro nuevo"
    }
    
    //
    func updateBooks() -> String {
        return "Actualizando libro"
    }
}
