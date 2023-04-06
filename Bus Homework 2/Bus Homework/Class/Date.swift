//
//  Date.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//

import Foundation

class Date {
 
    var day: Int = 1
    var month: Int = 1
    var year: Int = 2023
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
    
    func printDate() {
        print("\(day) / \(month) / \(year)")
    }
}
