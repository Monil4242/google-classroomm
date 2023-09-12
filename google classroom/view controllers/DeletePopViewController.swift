//
//  DeletePopViewController.swift
//  google classroom
//
//  Created by monil sojitra on 21/08/23.
//

import UIKit

class DeletePopViewController: UIViewController {

    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pop.layer.cornerRadius = 5
        pop.layer.masksToBounds = true

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
    

  
    @IBAction func deleteButtonAction(_ sender: Any) {
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: false)
    }
}
