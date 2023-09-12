//
//  sideMenuTableViewCell2.swift
//  google classroom
//
//  Created by monil sojitra on 06/08/23.
//

import UIKit

class sideMenuTableViewCell2: UITableViewCell {

    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var section2Label: UILabel!
    
    var indexPath: IndexPath!
    //weak var delegate1: AddListTableViewCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
