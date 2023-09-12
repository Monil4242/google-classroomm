//
//  ViewControllerForJoinClass.swift
//  google classroom
//
//  Created by r84 on 28/07/23.
//

import UIKit

class ViewControllerForJoinClass: UIViewController {

    @IBOutlet weak var classCodeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        classCodeTextField.layer.cornerRadius = 2
        classCodeTextField.layer.masksToBounds = true
        

    }
    

    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)

    }
    
    @IBAction func joinButtonAction(_ sender: Any) {
    }
    
    @IBAction func threeDotButtonAction(_ sender: Any) {
       
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForthreeDotInJoinClass") as! ViewControllerForthreeDotInJoinClass
        present(n, animated: true)
        
    }
    
    @IBOutlet weak var popUpGmail: UILabel!
}
