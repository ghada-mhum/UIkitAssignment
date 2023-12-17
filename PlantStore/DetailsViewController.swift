//
//  DetailsViewController.swift
//  PlantStore
//
//  Created by ghada Mohammad on 29/05/1445 AH.
//

import UIKit

class DetailsViewController: UIViewController {
    var object = CartViewController()
    var image = UIImage()
    var plantName = ""
    var plantPrice = ""
    var plantDesc = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var Price: UILabel!
    
    @IBOutlet weak var Desc: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label?.text = "\(plantName)"
        img?.image = image
        Price?.text = "\(plantPrice)"
        Desc?.text = "\(plantDesc)"
     
    }
    
    @IBAction func AddButton(_ sender: Any) {
        object.itemsNameArray.append(plantName)
        object.itemsImgArray.append(image)
        object.itemsPriceArray.append(plantPrice)
        print("Item added")
        print(object.itemsNameArray)
    }
    
    @IBAction func CartButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "CartViewController") as? CartViewController
        self.navigationController?.pushViewController(vc!, animated: true)
       
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
