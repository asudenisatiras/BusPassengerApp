//
//  noregistViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 4.04.2023.
//

import UIKit

class noregistViewController: UIViewController, UIPickerViewDelegate {
    
    let data3 = ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"]
    
    let data4 = ["Adana", "Adıyaman", "Afyonkarahisar", "Ağrı", "Amasya", "Ankara", "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "Mersin", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"]
    
    @IBOutlet weak var fromPick: UIPickerView!
    
    @IBOutlet weak var toPick: UIPickerView!
    
    
    @IBOutlet weak var datesPicker: UIDatePicker!
    
    
    
    let dateFormatter = DateFormatter()
    var date: String = ""
    var tomorrow: Bool = false
    var today: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fromPick.delegate = self
        toPick.dataSource = self
        toPick.delegate = self
        fromPick.dataSource = self
        
        
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        date = dateFormatter.string(from: datesPicker.date)
        
    }
    
    @IBAction func todaysDate(_ sender: Any) {
        
        tomorrow = false
            
            if !today {
                let modifyDate = Calendar.current.date(byAdding: .day, value: -1, to: datesPicker.date)
                date = dateFormatter.string(from: modifyDate ?? datesPicker.date)
                datesPicker.date = modifyDate ?? datesPicker.date
                today = true
            }
    }
    
    @IBAction func tomorrowsDate(_ sender: Any) {
        today = false
        
        if !tomorrow {
            let modifyDate = Calendar.current.date(byAdding: .day, value: 1, to: datesPicker.date)
            date = dateFormatter.string(from: modifyDate ?? datesPicker.date)
            datesPicker.date = modifyDate ?? datesPicker.date
            tomorrow = true
        }
        
        
    }
    
    
}
        extension noregistViewController:  UIPickerViewDataSource {
            
            func numberOfComponents(in pickerView: UIPickerView) -> Int {
                return 1
            }
            
            func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
                return data3.count
                return data4.count
            }
            func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
                   return data3[row]
                return data4[row]
               
                
               }
               
              
               
        }
