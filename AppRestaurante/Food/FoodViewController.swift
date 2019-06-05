//
//  FoodViewController.swift
//  AppRestaurante
//
//  Created by Daniel Miranda on 03/06/2019.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit
import Alamofire

//struct Food {
//    let _id: Int
//    let name: String
//    let description: String
//    let quote: String
//
//}

class FoodViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://tonterias.herokuapp.com/api/tonterias"
        guard let url = URL(string: jsonUrlString) else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            print("haciendo fleje cosas aqui")
        }.resume()

//        let myFood = Food(id: 1, name: "food name", description: "description")
//        print(myFood)

    }
}
