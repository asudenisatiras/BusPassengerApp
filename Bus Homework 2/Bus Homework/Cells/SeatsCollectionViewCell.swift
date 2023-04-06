//
//  SeatsCollectionViewCell.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 6.04.2023.
//

import UIKit

class SeatsCollectionViewCell: UICollectionViewCell {
    
   
    @IBOutlet weak var seatImageView: UIImageView!
    
    @IBOutlet weak var seatNumberLabel: UILabel!
    
    func configure(model: SeatsModel) {
            seatImageView.image = UIImage(named: model.seatImage) // model olarak verceğin değişkeni alıp resme atamak

           seatNumberLabel.text = model.seatNumber
        
    }
        }

