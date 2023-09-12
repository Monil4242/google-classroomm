//
//  CreateClassSettingViewController.swift
//  
//
//  Created by monil sojitra on 14/08/23.
//

import UIKit

class CreateClassSettingViewController: UIViewController {

    @IBOutlet weak var popUp: UIView!
    
    @IBOutlet weak var pop2: UIView!
    
    @IBOutlet weak var classLb: UILabel!
    
    @IBOutlet weak var sectionLb: UILabel!
    var a1 = String()
    var a2 = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        cornerRadius()
      
    }
    
    func cornerRadius(){
        popUp.layer.cornerRadius = 5
        popUp.layer.masksToBounds = true
        pop2.layer.cornerRadius = 5
        pop2.layer.masksToBounds = true
        pop2.layer.shadowColor = UIColor.black.cgColor
        pop2.layer.shadowOpacity = 4.4
        pop2.layer.shadowRadius = 6.0
        pop2.layer.borderColor = UIColor.gray.cgColor
        pop2.layer.borderWidth = 2
    }

    @IBAction func settingButtonAction(_ sender: Any) {
    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerThreeDotPopup") as! ViewControllerThreeDotPopup
        present(n, animated: true)
    }
    
    @IBAction func shareWithYourClassButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ShareWithYourClassViewController") as! ShareWithYourClassViewController
        present(n, animated: true)
        //navigationController?.pushViewController(n, animated: true)
    }
    
    @IBAction func doubleArrowButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ShareWithYourClassViewController") as! ShareWithYourClassViewController
        present(n, animated: false)
    }
}
