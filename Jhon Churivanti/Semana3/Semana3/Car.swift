//
//  Car.swift
//  Semana3
//
//  Created by Mac19 on 30/03/24.
//

import Foundation

class Car
{
    
    enum colors
    {
        case black
        case yellow
        case red
        case green
    }
    
    var brand: String = ""
    var model: String = ""
    var licensePlace: String = ""
    var price: Double = 0.0
    var color: colors = .red
    var numberPort: Int = 0
    var engine: String = ""
    
    init(brand: String, model: String, licensePlace: String, price: Double, color: colors, numberPort: Int, engine: String) {
        self.brand = brand
        self.model = model
        self.licensePlace = licensePlace
        self.price = price
        self.color = color
        self.numberPort = numberPort
        self.engine = engine
    }
    // Al usar \() estamos teniendo una interpolacion
    // Cuando se crea una funcion que retorna un valor es necesario especificar que tipo de valor se va devolver, por eso el uso de -> String
    
    func startCar() -> String
    {
        return "El carro: \(self.brand) -> \(self.model) con color \(self.color) prendio"
    }
    
    func acelerarCar() -> String
    {
        return "Acelerando carro: \(self.brand) con motor -> \(self.engine) a maxima velocidad"
    }
    
    func frenarCar() -> String
    {
        return "Hora de frenar al carro: \(self.model) con un modelo de \(self.model)"
    }
}
