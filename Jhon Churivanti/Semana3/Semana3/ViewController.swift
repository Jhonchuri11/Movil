//
//  ViewController.swift
//  Semana3
//
//  Created by Mac19 on 30/03/24.
//

import UIKit

class ViewController: UIViewController {

    // No activa el tab
    // Los ISBO deben estar siempre antes de una funcion
    // ViewDidLad
    
    // IBOutlet createCar
    @IBOutlet weak var btnCreateCar: UIButton!
    
    // IBoulet acelerar
    @IBOutlet weak var btnAcelerarCar: UIButton!
    
    // IBOutlet frenar
    @IBOutlet weak var btnFrenarCar: UIButton!
    
    // listBooks
    @IBOutlet weak var btnListbooks: UIButton!
    
    // addBooks
    @IBOutlet weak var btnAddBooks: UIButton!
    
    // updateBooks
    @IBOutlet weak var btnUpdateBooks: UIButton!
    
    // Instanciamos la clase Car
    let car = Car(brand: "Ultimate", model: "XS", licensePlace: "98DF", price: 20.999, color: .black, numberPort: 2030, engine: "LAND")
    // books
    let books = Book(name: "Name1", anioPublicacion: "2023-04-02", editorial: "Edit-1", tema: "Tema1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Despues de la funcion
    // Permite activar los elementos
    
    @IBAction func onTapCreateCar(_ sender: UIButton) {
        //rint("Hola Mundo JWCA")
        print(car.startCar())
    }
    
    // Action acelerar car
    
    @IBAction func onTapAcelerarCar(_ sender: UIButton) {
        //print("Acelerando car")
        print(car.acelerarCar())
    }
    
    // Action frenar car
    
    @IBAction func onTapFrenarcar(_ sender: UIButton) {
        //print("Frenando car")
        print(car.frenarCar())
    }
    
    // Action listbooks
    @IBAction func onTapListBooks(_ sender: UIButton) {
        print(books.listBooks())
    }
    
    // Action addbooks
    
    @IBAction func onTapAddBooks(_ sender: UIButton) {
        print(books.addBooks())
    }
    // Action UpdateBooks
    
    @IBAction func onTapUpdatebooks(_ sender: UIButton) {
        print(books.updateBooks())
    }
}

