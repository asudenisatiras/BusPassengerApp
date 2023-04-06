//
//  TicketViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 6.04.2023.
//

import UIKit

class TicketViewController: UIViewController {

    
    @IBOutlet weak var identityTextField: UITextField!
    
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    
    @IBOutlet weak var mailTextField: UITextField!
    
    @IBOutlet weak var nameSurnameTextField: UITextField!
    
    
    @IBOutlet weak var reservedSeats: UITextField!
    
    
    @IBOutlet weak var creditcardNo: UITextField!
    
    
    @IBOutlet weak var exprationDateTextField: UITextField!
    
    
    @IBOutlet weak var cvcTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

   
    @IBOutlet weak var paymentButton: UIButton!
    
}
