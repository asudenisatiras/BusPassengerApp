//
//  secondViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 2.04.2023.
//

import UIKit

class secondViewController: UIViewController {
    
    let data = ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"]
    
    let data2 = ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"]
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet weak var findButton: UIButton!
    @IBOutlet weak var secondMyPickerView: UIPickerView!
    var myName = ""
    let dateFormatter = DateFormatter()
    var date: String = ""
    var tomorrow: Bool = false
    var today: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName
        
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        date = dateFormatter.string(from: datePicker.date)
        
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        secondMyPickerView.delegate = self
        secondMyPickerView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        
    }
    
    @IBAction func todayDateButton(_ sender: Any) { tomorrow = false
        
        if !today {
            let modifiedDate = Calendar.current.date(byAdding: .day, value: -1, to: datePicker.date)
            date = dateFormatter.string(from: modifiedDate ?? datePicker.date)
            datePicker.date = modifiedDate ?? datePicker.date
            today = true
        }
    }
    
    @IBAction func tomorrowDateButton(_ sender: Any) {
    today = false
        
        if !tomorrow {
            let modifiedDate = Calendar.current.date(byAdding: .day, value: 1, to: datePicker.date)
            date = dateFormatter.string(from: modifiedDate ?? datePicker.date)
            datePicker.date = modifiedDate ?? datePicker.date
            tomorrow = true
        }
    }
    
    }
extension secondViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return data[row]
       }
       
      
       
}

    
    
