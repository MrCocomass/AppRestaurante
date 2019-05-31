//
//  FoodTableViewCell.swift
//  AppRestaurante
//
//  Created by Daniel Miranda on 31/05/2019.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit
import Alamofire



class FoodTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelFoodPrice: NSLayoutConstraint!
    @IBAction func btnAddFood(_ sender: Any) {
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
