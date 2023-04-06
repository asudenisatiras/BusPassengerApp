//
//  companyViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 4.04.2023.
//

import UIKit

class CompanyViewController: UIViewController {
    
    
    var busCompany = [BusCompany]()
    var bus: BusCompany?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
     
        busCompany.append(BusCompany(busImage: "benturizm", time: "09.00", price: "500TL",seatOptions: "2+2", companyName: "Ben Turizm"))
        busCompany.append(BusCompany(busImage: "kamilkoc", time: "11.00", price: "350TL",seatOptions: "2+2", companyName: "Kamil Koç"))
        busCompany.append(BusCompany(busImage: "metro", time: "9.30", price: "400TL",seatOptions: "2+2", companyName: "Metro Turizm"))
       
        busCompany.append(BusCompany(busImage: "ulusoy", time: "12.00", price: "450TL",seatOptions: "2+2",companyName: "Ulusoy Turizm"))
        busCompany.append(BusCompany(busImage: "benturizm", time: "13.00", price: "500TL",seatOptions: "2+2", companyName: "Ben Turizm"))
       
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = UIColor.green
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        //self.title = "city"
    }
}

extension CompanyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        busCompany.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.configure(model: busCompany[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            bus = busCompany[indexPath.row]
            performSegue(withIdentifier: "toSeatsSelection", sender: nil)
            tableView.deselectRow(at: indexPath, animated: true)
        }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toSeatsSelection" {
                let destinationDetailVc = segue.destination as! SeatsSellectionViewController
                destinationDetailVc.bus = bus
                
            }
        }
    }
     
