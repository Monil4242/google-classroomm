//
//  InsertLinkViewController.swift
//  google classroom
//
//  Created by monil sojitra on 21/08/23.
//

import UIKit

class InsertLinkViewController: UIViewController {

    @IBOutlet weak var pop: UIView!
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pop.layer.cornerRadius = 5
        pop.layer.masksToBounds = true
        textField.layer.cornerRadius = 2
        textField.layer.masksToBounds = true

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0,options: .curveLinear) {
            self.view.alpha = 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: false)
    }
    

    @IBAction func addButtonAction(_ sender: Any) {
    }
    
    @IBAction func cancelButtonACtion(_ sender: Any) {
        dismiss(animated: false)
    }
}
