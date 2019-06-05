//
//  FoodDetailViewController.swift
//  AppRestaurante
//
//  Created by Daniel Miranda on 31/05/2019.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit
import Alamofire

class FoodDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var labelFoodPrice: UILabel!
    @IBOutlet weak var labelFoodName: UILabel!
    @IBOutlet weak var labelFoodDesc: UILabel!
    
    @IBAction func btnBack(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelFoodName.text = foood[myIndex]
        labelFoodDesc.text = foodDetail[myIndex]
        labelFoodPrice.text = price[myIndex]

        detailImage.image = UIImage(named: foood[myIndex] + ".jpg")
    
//        detailImage.image = UIImage(named: takeaway-pizza-stock-photography_gg55831261)
    
    }
}
