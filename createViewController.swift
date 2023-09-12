//
//  createViewController.swift
//  google classroom
//
//  Created by monil sojitra on 10/09/23.
//

import UIKit

class createViewController: UIViewController {

    @IBOutlet weak var createView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createView.layer.cornerRadius = 10
        createView.layer.masksToBounds = true

        // Do any additional setup after loading the view.
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
    
    @IBAction func assignmentButtonAction(_ sender: Any) {
    }
    
    @IBAction func questionButtonAction(_ sender: Any) {
    }
    
    @IBAction func materialButtonAction(_ sender: Any) {
    }
    
    @IBAction func reusePostButtonACtion(_ sender: Any) {
    }
    
    @IBAction func topicButtonAction(_ sender: Any) {
    }
}
