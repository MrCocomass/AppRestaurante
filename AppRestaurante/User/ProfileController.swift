//
//  ProfileController.swift
//  AppRestaurante
//
//  Created by Daniel Miranda on 30/05/2019.
//  Copyright © 2019 Daniel Miranda. All rights reserved.
//

import UIKit
import Alamofire

class ProfileController: UIViewController {

    @IBOutlet weak var nameupdate: UITextField!
    @IBOutlet weak var emailupdate: UITextField!
    @IBOutlet weak var passwordupdate: UITextField!
    
    @IBAction func saveupdate(_ sender: Any) {
        update()
    }
    
    @IBOutlet weak var Logoutbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    public func update()
    {
//        print("hola")
        let URL = "http://localhost:8888/AppRest/public/index.php/api/updateUser"
        let parameters: Parameters = ["email": emailupdate.text!, "password": emailupdate.text!, "name": nameupdate.text!]

        Alamofire.request(URL,method: .post,parameters:parameters).responseJSON
            {
                response in
                if let result = response.result.value
                {
                    let jsondata = result as! NSDictionary
                    print(response.result.value)
                    ;if self.nameupdate.text?.isEmpty ?? true {
                        print("textField is empty")
                        let alertController = UIAlertController(title: "campos vacios",message: "hey", preferredStyle: UIAlertController.Style.alert)
                        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alertController, animated: true, completion: nil)
                    }
                    else{
                        self.performSegue(withIdentifier: "openmain", sender: nil)
                        let alertController = UIAlertController(title: "logeado",message: "hey", preferredStyle: UIAlertController.Style.alert)
                        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
                        self.present(alertController, animated: true, completion: nil)
                    }
                }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
