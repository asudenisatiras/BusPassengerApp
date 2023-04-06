//
//  TableViewCell.swift
//  Bus Homework
//
//  Created by Asude Nisa Tıraş on 3.04.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var priceLabel: UILabel!

    @IBOutlet weak var TimeLabel: UILabel!
    
    
    
    
    @IBOutlet weak var seatOptionsLabel: UILabel!
    
    @IBOutlet weak var busImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(model: BusCompany) {
        busImage.image = UIImage(named: model.busImage!)
        //timePckr.date = UIDatePicker(coder:)
        priceLabel.text = model.price
        TimeLabel.text = model.time
        
        seatOptionsLabel.text = model.seatOptions
    }
    
}
