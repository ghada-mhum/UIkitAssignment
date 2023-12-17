//
//  CartTableViewCell.swift
//  PlantStore
//
//  Created by ghada Mohammad on 01/06/1445 AH.
//

import UIKit

class CartTableViewCell: UITableViewCell {

    @IBOutlet weak var cartImg: UIImageView!
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var cartPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
