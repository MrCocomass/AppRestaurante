import UIKit
import Alamofire

var food = ["Hamburguesa", "Pizza", "Papas", "Sandwich"]
var foodDetail = ["Hamburguesa con carne de vacuno con queso, tomate, lechuga, cebolla, ketchup y mostaza", "Pizza con queso de cabra, datiles, platano y jamon", "Ración para una persona de papas", "Sandwich con lechuga, tomate, huevo, mayonesa y atun"]
var price = ["3,50€", "7,75€", "2,50€", "4,25€"]

var myIndex = 0


class FoodTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (food.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell (style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = food[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! EventTableViewCell
    //
    //        cell.titleLbl.text = events[indexPath.row]["title"] as? String
    //        cell.descriptionLbl.text = events[indexPath.row]["description"] as? String
    
}


