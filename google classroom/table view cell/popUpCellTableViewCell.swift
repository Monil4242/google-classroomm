//
//  popUpCellTableViewCell.swift
//  google classroom
//
//  Created by monil sojitra on 28/07/23.
//

import UIKit

class popUpCellTableViewCell: UITableViewCell {

    @IBOutlet weak var circleImage: UIImageView!
    
    @IBOutlet weak var gmailNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
