//
//  CartViewController.swift
//  PlantStore
//
//  Created by ghada Mohammad on 29/05/1445 AH.
//

import UIKit

class CartViewController: UIViewController {
    public var itemsNameArray: [String] = ["Plant 1"]
    public var itemsImgArray: [UIImage] = [UIImage(named: "plant1")!]
    public var itemsPriceArray: [String] = ["10 SR"]
    @IBOutlet weak var cartTableView: UITableView?
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        cartTableView?.dataSource = self
        cartTableView?.delegate = self
        print(itemsNameArray)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkOutButton(_ sender: Any) {
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
extension CartViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemsNameArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cartCell", for: indexPath) as? CartTableViewCell
        cell?.cartLabel.text = itemsNameArray[indexPath.row]
        cell?.cartImg.image =  itemsImgArray[indexPath.row]
        cell?.cartPrice.text = itemsPriceArray[indexPath.row]
        return cell!
    }
    
    
}
