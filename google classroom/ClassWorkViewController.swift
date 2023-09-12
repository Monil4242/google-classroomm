//
//  ClassWorkViewController.swift
//  google classroom
//
//  Created by monil sojitra on 26/08/23.
//

import UIKit

class ClassWorkViewController: UIViewController {

    @IBOutlet weak var plusButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadius()

        
    }
    func cornerRadius(){
        plusButton.layer.cornerRadius = 28
        plusButton.layer.shadowColor = UIColor.systemGray2.cgColor
        plusButton.layer.shadowOpacity = 4.4
        plusButton.layer.shadowRadius = 6.0

    }
    

    @IBAction func dotButtonACtion(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerThreeDotPopup") as! ViewControllerThreeDotPopup
        present(n, animated: true)
    }
    
    @IBAction func plusButtonACtion(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "createViewController") as! createViewController
        present(n, animated: true)
    }
}
