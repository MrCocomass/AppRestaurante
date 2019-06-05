import UIKit
import Alamofire

var foood = ["Hamburguesa", "Pizza", "Papas", "Sandwich"]
var foodDetail = ["Hamburguesa con carne de vacuno con queso, tomate, lechuga, cebolla, ketchup y mostaza", "Pizza con queso de cabra, datiles, platano y jamon", "Ración para una persona de papas", "Sandwich con lechuga, tomate, huevo, mayonesa y atun"]
var price = ["3,50€", "7,75€", "2,50€", "4,25€"]

var myIndex = 0

//struct Food: Decodable {
//    let pass: Int
//    let user:String
////    let id: Int
////    let name: String
////    let description: String
////    let price: String
////    let quote: String
////    let link: String
//
//    init(json: [String: Any]) {
//        user = json["user"] as? String ?? ""
//        pass = json["pass"] as? Int ?? -1
////        id = json["id"] as? Int ?? -1
////        name = json["name"] as? String ?? ""
////        description = json["description"] as? String ?? ""
////        price = json["price"] as? String ?? ""
////        link = json["link"] as? String ?? ""
//    }
//}

//        let myFood = Food(id: 1, name: "food name", description: "description")
//        print(myFood)


class FoodTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    class Comida : Decodable {
//        var user: String = ""
//        var pass: Int = 0
        var name: String = ""
        var price: String = ""
        var description: String = ""
    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        listaUsuarios()
    }
    
    func listaUsuarios() {
//        let url = URL(string: "http://private-088c5a-usuarios4.apiary-mock.com/users")
        let url = URL(string: "http://localhost:8888/AppRest/public/index.php/api/getfood")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error == nil {
                do {
                    let getfood = try JSONDecoder().decode([Comida].self, from: data!)
                    for u in getfood {
//                        print(u.user, u.pass)
                        print(u.name, u.price, u.description)
                    }
                } catch let error {
                    print(error)
                }
            } else {
                print(error!)
            }
            }.resume()
    }

//    func listaUsuarios() {
//        let url = URL(string: "http://private-088c5a-usuarios4.apiary-mock.com/users")
//        URLSession.shared.dataTask(with: url!) { (data, response, error) in
//            if error == nil {
//                do {
//                    let users = try JSONDecoder().decode([Usuario].self, from: data!)
//                    for u in users {
//                        print(u.user, u.pass)
//                    }
//                } catch let error {
//                    print(error)
//                }
//            } else {
//                print(error!)
//            }
//        }.resume()
//    }
    
////        let jsonUrlString = "http://localhost:8888/AppRest/public/index.php/api/getfood"
//            let jsonUrlString = "http://private-088c5a-usuarios4.apiary-mock.com/users"
//        guard let url = URL(string: jsonUrlString) else {return}
//
//        URLSession.shared.dataTask(with: url) { (data, response, err) in
//            print("haciendo fleje cosas aqui")
//            guard let data = data else { return }
////            let dataAsString = String(data: data, encoding: .utf8)
////            print(dataAsString)
//            do {
//
//                let foods = try JSONDecoder().decode(Food.self, from: data)
//                print(foods.name)
//                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else { return }
////                print(json)
//                let getfood = Food(json: json)
//                print(getfood.name)
//
//            } catch let jsonErr {
//                print("error serializando:", jsonErr)
//            }
//
//            }.resume()

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (foood.count)
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell (style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = foood[indexPath.row]

        return(cell)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}

