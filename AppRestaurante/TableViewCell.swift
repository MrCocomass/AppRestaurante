//
//  TableViewCell.swift
//  AppRestaurante
//
//  Created by Daniel Miranda on 30/05/2019.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelFoodName: UILabel!
    @IBOutlet weak var labelFoodPrice: UILabel!
    
    @IBAction func btnAddFood(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
