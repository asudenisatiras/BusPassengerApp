//
//  StartViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//

import UIKit

class StartViewController: UIViewController {
    
    var userName = ""
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var idTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        if nameTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Write your username!")
        } else if idTextField.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Write your e-mail!")
        }
        
        userName = nameTextField.text!
       
    }
    
    
    func makeAlert(titleInput: String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstSegue" {
            // as -- casting
            let destinationVC = segue.destination as! secondViewController
            destinationVC.myName = userName
        }
        
    }
}








