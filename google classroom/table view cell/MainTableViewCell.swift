//
//  MainTableViewCell.swift
//  google classroom
//
//  Created by monil sojitra on 29/08/23.
//

import UIKit
protocol AddListTableViewCellDelegate: AnyObject {
    func editlist(with index: IndexPath)
    func deleteList(with index: IndexPath)
}

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var className: UILabel!
    
    @IBOutlet weak var Sectionname: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var menuButton: UIButton!
    
    var indexPath: IndexPath!
    weak var delegate: AddListTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func MenuButtonAction(_ sender: UIButton) {
        let editButton = UIAction(title: "Edit") { _ in
            self.delegate?.editlist(with: self.indexPath)
        }
        
        let deleteButton = UIAction(title: "Delete") { _ in
            self.delegate?.deleteList(with: self.indexPath)
        }
        
        let menu = UIMenu(children: [editButton, deleteButton])
        sender.showsMenuAsPrimaryAction = true
        sender.menu = menu
    }
}
