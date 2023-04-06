//
//  BusCompany.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 5.04.2023.
//

import Foundation

import UIKit

class BusCompany {
    
    var busImage: String?
    var time: String?
    var price: String?
    var seatOptions: String?
    var companyName: String?
    
    init(busImage: String, time: String, price: String, seatOptions: String,companyName: String) {
        self.busImage = busImage
        self.time = time
        self.price = price
        self.seatOptions = seatOptions
        self.companyName = companyName
    }
    }

