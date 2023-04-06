//
//  Passenger.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//



import Foundation


import Foundation

class Passenger {
    var id: Int = 0
    var name: String = "isimsiz"
    var surname: String = "isimsiz"
    
    init(id: Int, name: String, surname: String) {
        self.id = id
        self.name = name
        self.surname = surname
    }
    
    func printPassenger() {
        print("Yolcu adı: \(name) - soy adı: \(surname) - id: \(id)")
    }
}

