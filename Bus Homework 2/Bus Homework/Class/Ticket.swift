//
//  Ticket.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//

import Foundation

class Ticket {
    var passenger: Passenger
    var date: Date
    var time: Time
    var seats: String
    var numberOfSeats: Int
    
    init(passenger: Passenger, date: Date, time: Time, seat: String, numberOfSeats: Int) {
        self.passenger = passenger
        self.date = date
        self.time = time
        self.seats = seat
        self.numberOfSeats = numberOfSeats
        
    }
    
    func printTicket() {
        print("\(passenger.name) \(passenger.surname) \(passenger.id) , \(date.day)/\(date.month)/\(date.year) , \(time.hour):\(time.minute) | \(seats)")
    }
    
}
