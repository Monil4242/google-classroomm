//
//  AddFromDriveViewController.swift
//  google classroom
//
//  Created by monil sojitra on 20/08/23.
//

import UIKit

class AddFromDriveViewController: UIViewController {

    @IBOutlet weak var tb: UITableView!
    var arr = ["My Drive","Computers","Shared with me","Starred","Recent"]
    var photo = [UIImage(named: "google-drive (1)"),UIImage(named: "laptop"),UIImage(named: "group"),UIImage(named: "star"),UIImage(named: "recent")]
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
    @IBAction func selecyButtonAction(_ sender: Any) {
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
    }
}
extension AddFromDriveViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! addFromDriveTableViewCell
        cell.imgView.image = photo[indexPath.row]
        cell.itemLabel.text = arr[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
