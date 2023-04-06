//
//  SeatsSellectionViewController.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 5.04.2023.
//

import UIKit

class SeatsSellectionViewController: UIViewController {
    
    var bus: BusCompany?
    
    
    var selectedBus : BusCompany?
    var count = 0
    var selectedIndexPath: IndexPath?
    var selectedSeats = [Int]()
    var busSeatNumDict = [Int : String]()
    var pathWayNumber = Int()
    var seatNumer = Int()
    var totalSeats = 55
    
    @IBOutlet weak var seatsCollectionView: UICollectionView!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    
    @IBOutlet weak var companyImageView: UIImageView!
    
    @IBOutlet weak var selectingSeatLabel: UILabel!
    
    @IBOutlet weak var SelectedSeatLabel: UILabel!
    
    @IBOutlet weak var totalPricingLabel: UILabel!
    
    @IBOutlet weak var totalPricedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
        seatsCollectionView?.reloadData()
        
    }
    
    private func configureCollectionView(){

        seatsCollectionView.delegate = self
        seatsCollectionView.dataSource = self

}
        }

    

extension SeatsSellectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView( _ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 55
    }

    func collectionView( _ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
     let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "seatCell", for: indexPath) as! SeatsCollectionViewCell
     
        let hidden = (indexPath.row - 2) % 5 == 0 && indexPath.row <= totalSeats
        
                cell.isHidden = hidden

                cell.configure(model: SeatsModel(seatImage: "smChair", seatNumber: ""))
        if selectedSeats.contains(indexPath.row) {
                   cell.backgroundColor = UIColor.orange
               } else {
                   cell.backgroundColor = UIColor.clear
               }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {


        let selectedCell = collectionView.cellForItem(at: indexPath)
        let seatNumber = indexPath.row + 1

                if selectedSeats.contains(indexPath.row) {
                    
                    if let index = selectedSeats.firstIndex(of: indexPath.row) {
                        selectedSeats.remove(at: index)
                    }
                    
                   selectedCell?.backgroundColor = UIColor.clear
                   
                } else {
                    
                    
                    if selectedSeats.count < 5 {
                        selectedSeats.append(indexPath.row)
                        selectedCell?.backgroundColor = UIColor.red
                    }
                }

                print("Selected seats: (seatNumber)")
            }

    }

    



    
    
        
        
    
   
        
        
        
    


    
   
        
      
    

