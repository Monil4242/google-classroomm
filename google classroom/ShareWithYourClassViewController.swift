//
//  ShareWithYourClassViewController.swift
//  Pods
//
//  Created by monil sojitra on 18/08/23.
//

import UIKit

class ShareWithYourClassViewController: UIViewController {

    @IBOutlet weak var postOt: UIButton!
    
    @IBOutlet weak var classNameLabel: UILabel!
    
    @IBOutlet weak var allStudentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        postOt.layer.cornerRadius = 2
        postOt.layer.masksToBounds = true
        classNameLabel.layer.cornerRadius = 15;        classNameLabel.layer.masksToBounds = true
        allStudentsLabel.layer.cornerRadius = 15
        allStudentsLabel.layer.masksToBounds = true

        
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
    
    @IBAction func postButtonAction(_ sender: Any) {
    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ThreeDotNewViewController") as! ThreeDotNewViewController
        present(n, animated: false)
    }
    
    @IBAction func addAttachmentButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "AddAttachementViewController") as! AddAttachementViewController
        present(n, animated: false)
    }
}
