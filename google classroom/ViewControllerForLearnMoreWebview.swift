//
//  ViewControllerForLearnMoreWebview.swift
//  google classroom
//
//  Created by r84 on 25/07/23.
//

import UIKit


class ViewControllerForLearnMoreWebview: UIViewController {
    @IBOutlet weak var popUp: UIView!
    
    @IBOutlet weak var tb: UITableView!
    var myNav : UINavigationController?
    var arr = ["monilsojitra42@gmail.com","monilsojitra4224@gmail.com","satyamjha2779@gmail.com","Add account"]
    var selectcell = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        popUp.layer.cornerRadius = 10
        popUp.layer.shadowColor = UIColor.systemGray2.cgColor
        popUp.layer.shadowOpacity = 4.4
        popUp.layer.shadowRadius = 4.0
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
//   override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            dismiss(animated: false)
//        }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let a = segue.destination as! ViewControllerForGmailAccountPopup
//        a.a1 = gmailNameLabel.text!
//    }
   
    @IBAction func okButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "uiviewControllerForHomePage") as! uiviewControllerForHomePage
//        navigationController?.pushViewController(n, animated: true)
        present(n, animated: true)
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
extension ViewControllerForLearnMoreWebview:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! popUpCellTableViewCell
        cell.gmailNameLabel.text = arr[indexPath.row]
        if selectcell == indexPath.row{
            cell.circleImage.image = UIImage(systemName: "circle.inset.filled")
        }
        else {
            cell.circleImage.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectcell = indexPath.row
        tb.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 58
    }
    
    
    
    
    
    
}

