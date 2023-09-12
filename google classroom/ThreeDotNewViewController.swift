//
//  ThreeDotNewViewController.swift
//  google classroom
//
//  Created by monil sojitra on 19/08/23.
//

import UIKit

class ThreeDotNewViewController: UIViewController {

    @IBOutlet weak var pop: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pop.layer.cornerRadius = 10
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
    

    @IBAction func scheduleButtonAction(_ sender: Any) {
//        let n = storyboard?.instantiateViewController(withIdentifier: "ScheduleViewController") as! ScheduleViewController
//        present(n, animated: false)
    }
    
    @IBAction func SaveDraftButtonAction(_ sender: Any) {
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
//        let n = storyboard?.instantiateViewController(withIdentifier: "DeletePopViewController") as! DeletePopViewController
//        present(n, animated: false)
    }
    
    @IBAction func sendFeedbackButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForSendGoogleFeedback") as! ViewControllerForSendGoogleFeedback
        present(n, animated: false)
    }
}
