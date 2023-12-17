//
//  ViewController.swift
//  PlantStore
//
//  Created by ghada Mohammad on 29/05/1445 AH.
//

import UIKit

class ViewController: UIViewController {
    var plantArray = ["Plant 1","Plant 2","Plant 3","Plant 4","Plant 5","Plant 6"]
    var plantPriceArray = ["10 SR","20 SR","15 SR","20 SR","10 SR","20 SR"]
    var images = ["plant1", "plant2","plant3", "plant4","plant5", "plant6"]
var descriptionArray = ["des 1","des 2","des 3","des 4","des 5","des 6"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView?.dataSource = self
        tableView?.delegate = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        plantArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "plantCell", for: indexPath) as? CellTableViewCell
        cell?.plantLabel.text = plantArray[indexPath.row]
        cell?.img.image = UIImage(named: images[indexPath.row])
        cell?.priceLabel.text = plantPriceArray[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController
        vc?.image = UIImage(named: images[indexPath.row])!
        vc?.plantName = plantArray[indexPath.row]
        vc?.plantPrice = plantPriceArray[indexPath.row]
        vc?.plantDesc = descriptionArray[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
