//
//  MainPageTableViewCell.swift
//  google classroom
//
//  Created by monil sojitra on 29/08/23.
//

import UIKit

class MainPageTableViewCell: UITableViewCell {

    @IBOutlet weak var BackView: UIView!
    
    @IBOutlet weak var ClassName: UILabel!
    
    @IBOutlet weak var SectionTextField: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func menuButtonACtion(_ sender: Any) {
    }
}
